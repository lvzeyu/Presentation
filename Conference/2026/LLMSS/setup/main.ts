import type { AppContext } from '@slidev/types'

export default function setupImageLightbox(_context: AppContext) {
  if (typeof document === 'undefined')
    return

  let overlay: HTMLDivElement | undefined
  let zoomedImage: HTMLImageElement | undefined

  function ensureOverlay() {
    if (overlay && zoomedImage)
      return { overlay, zoomedImage }

    overlay = document.createElement('div')
    overlay.className = 'image-lightbox'
    overlay.setAttribute('role', 'button')
    overlay.setAttribute('aria-label', 'Close enlarged image')

    zoomedImage = document.createElement('img')
    zoomedImage.alt = ''
    overlay.appendChild(zoomedImage)
    document.body.appendChild(overlay)

    overlay.addEventListener('click', closeLightbox)
    return { overlay, zoomedImage }
  }

  function closeLightbox() {
    overlay?.classList.remove('is-open')
    overlay?.querySelector('svg')?.remove()
    document.body.classList.remove('image-lightbox-open')
  }

  function openLightbox(source: HTMLImageElement | SVGSVGElement) {
    const elements = ensureOverlay()
    elements.overlay.querySelector('svg')?.remove()
    elements.zoomedImage.hidden = source instanceof SVGSVGElement
    if (source instanceof SVGSVGElement) {
      // Inline diagrams are cloned so they keep the deck's fonts when enlarged
      const { width, height } = source.viewBox.baseVal
      const clone = source.cloneNode(true) as SVGSVGElement
      clone.style.width = `min(88vw, calc(84vh * ${width / height}))`
      elements.overlay.appendChild(clone)
    }
    else {
      elements.zoomedImage.src = source.currentSrc || source.src
      elements.zoomedImage.alt = source.alt || ''
    }
    elements.overlay.classList.add('is-open')
    document.body.classList.add('image-lightbox-open')
  }

  document.addEventListener('click', (event) => {
    const target = event.target
    if (!(target instanceof Element))
      return

    const image = target.closest('.slidev-layout img, .slidev-layout svg.zoomable') as HTMLImageElement | SVGSVGElement | null
    if (!image || image.classList.contains('logo') || image.classList.contains('title-qr'))
      return

    event.preventDefault()
    event.stopPropagation()
    openLightbox(image)
  }, true)

  document.addEventListener('keydown', (event) => {
    if (event.key === 'Escape')
      closeLightbox()
  })

  function externalizeLinks(root: ParentNode) {
    root.querySelectorAll('.slidev-layout a[href]').forEach((link) => {
      link.setAttribute('target', '_blank')
      link.setAttribute('rel', 'noopener noreferrer')
    })
  }

  externalizeLinks(document)

  const linkObserver = new MutationObserver(() => externalizeLinks(document))
  linkObserver.observe(document.body, { childList: true, subtree: true })
}
