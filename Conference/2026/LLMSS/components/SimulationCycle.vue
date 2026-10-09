<!-- Simulation design diagram for the norm-change research question slide. -->
<template>
  <svg class="simulation-cycle zoomable" viewBox="0 0 680 540" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Simulation design: setup and emergent dynamics of norm change">
    <defs>
      <marker id="sc-arrow" viewBox="0 0 10 10" refX="8" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse">
        <path d="M0 0 L10 5 L0 10 z" fill="#9ca3af" />
      </marker>
    </defs>
    <path d="M386.4 127.8 A142 142 0 0 1 433.1 154.7" stroke="#9ca3af" stroke-width="2.5" fill="none" marker-end="url(#sc-arrow)" />
    <path d="M479.4 235.0 A142 142 0 0 1 479.4 289.0" stroke="#9ca3af" stroke-width="2.5" fill="none" marker-end="url(#sc-arrow)" />
    <path d="M433.1 369.3 A142 142 0 0 1 386.4 396.2" stroke="#9ca3af" stroke-width="2.5" fill="none" marker-end="url(#sc-arrow)" />
    <path d="M293.6 396.2 A142 142 0 0 1 246.9 369.3" stroke="#9ca3af" stroke-width="2.5" fill="none" marker-end="url(#sc-arrow)" />
    <path d="M200.6 289.0 A142 142 0 0 1 200.6 235.0" stroke="#9ca3af" stroke-width="2.5" fill="none" marker-end="url(#sc-arrow)" />
    <g transform="translate(308.8 214.8) scale(2.6)" fill="#243033"><path fill="#243033" d="M13 3c3.88 0 7 3.14 7 7c0 2.8-1.63 5.19-4 6.31V21H9v-3H8c-1.11 0-2-.89-2-2v-3H4.5c-.42 0-.66-.5-.42-.81L6 9.66A7.003 7.003 0 0 1 13 3m0-2C8.41 1 4.61 4.42 4.06 8.9L2.5 11h-.03l-.02.03c-.55.76-.62 1.76-.19 2.59c.36.69 1 1.17 1.74 1.32V16c0 1.85 1.28 3.42 3 3.87V23h11v-5.5c2.5-1.67 4-4.44 4-7.5c0-4.97-4.04-9-9-9m1 14v-1.5c-2.21 0-4-1.79-4-4c0-.82.25-1.58.67-2.21l1.09 1.09c-.17.34-.26.72-.26 1.12A2.5 2.5 0 0 0 14 12v-1.5l2.25 2.25zm3.33-3.29l-1.09-1.09c.17-.34.26-.72.26-1.12A2.5 2.5 0 0 0 14 7v1.5l-2.25-2.25L14 4v1.5c2.21 0 4 1.79 4 4c0 .82-.25 1.58-.67 2.21"/></g>
    <text x="340" y="303" text-anchor="middle" style="font-size:17.5px; font-weight:800" fill="#243033">50 LLM agents</text>
    <circle cx="340.0" cy="120.0" r="38" fill="#eef2ff" stroke="#4338ca" stroke-width="2.5" />
    <g transform="translate(317.2 97.2) scale(1.9)" fill="#4338ca"><path fill="#4338ca" d="m21 9l-4-4v3h-7v2h7v3M7 11l-4 4l4 4v-3h7v-2H7z"/></g>
    <text x="340.0" y="48.0" text-anchor="middle" style="font-size:21px; font-weight:800" fill="#4338ca">Competing Norms</text>
    <text x="340.0" y="70.0" text-anchor="middle" style="font-size:15.5px; font-weight:400" fill="#5f6b73">Rotate vs. share payment</text>
    <circle cx="463.0" cy="191.0" r="38" fill="#eef2ff" stroke="#4338ca" stroke-width="2.5" />
    <g transform="translate(440.2 168.2) scale(1.9)" fill="#4338ca"><path fill="#4338ca" d="M8 13c-1.86 0-3.41 1.28-3.86 3H2v2h2.14c.45 1.72 2 3 3.86 3s3.41-1.28 3.86-3H22v-2H11.86c-.45-1.72-2-3-3.86-3m0 6c-1.1 0-2-.9-2-2s.9-2 2-2s2 .9 2 2s-.9 2-2 2M19.86 6c-.45-1.72-2-3-3.86-3s-3.41 1.28-3.86 3H2v2h10.14c.45 1.72 2 3 3.86 3s3.41-1.28 3.86-3H22V6zM16 9c-1.1 0-2-.9-2-2s.9-2 2-2s2 .9 2 2s-.9 2-2 2"/></g>
    <text x="513.0" y="169.0" text-anchor="start" style="font-size:21px; font-weight:800" fill="#4338ca">Individual</text>
    <text x="513.0" y="193.0" text-anchor="start" style="font-size:21px; font-weight:800" fill="#4338ca">Preferences</text>
    <text x="513.0" y="215.0" text-anchor="start" style="font-size:15.5px; font-weight:400" fill="#5f6b73">Strength set by</text>
    <text x="513.0" y="234.0" text-anchor="start" style="font-size:15.5px; font-weight:400" fill="#5f6b73">steering vector</text>
    <circle cx="463.0" cy="333.0" r="38" fill="#eef2ff" stroke="#4338ca" stroke-width="2.5" />
    <g transform="translate(425.6 295.6) scale(1.1)" fill="none" stroke="#4338ca" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M 45.001999 16.360001C 45.002003 18.874001 47.040001 20.912001 49.554001 20.912001C 52.068001 20.912001 54.106003 18.874001 54.106003 16.360001C 54.106003 13.846 52.068001 11.808001 49.554001 11.808001C 47.040001 11.808001 45.002003 13.846 45.002003 16.360001M 56.383999 30.586C 56.320225 26.860008 53.281536 23.872885 49.554996 23.872885C 45.828461 23.872885 42.789772 26.860008 42.725998 30.585999M 45.001999 41.966C 45.002003 44.480003 47.040001 46.518002 49.554001 46.518002C 52.068001 46.518002 54.106003 44.480003 54.106003 41.966003C 54.106003 39.452003 52.068001 37.414001 49.554001 37.414001C 47.040001 37.414001 45.002003 39.452003 45.002003 41.966003M 56.383999 56.200001C 56.320225 52.474007 53.281536 49.486885 49.554996 49.486885C 45.828461 49.486885 42.789772 52.474007 42.725998 56.199997M 11.616 37.493999C 11.616001 45.225986 17.884014 51.493999 25.616001 51.493999C 33.347988 51.493999 39.616001 45.225986 39.616001 37.494003C 39.616001 29.762014 33.347988 23.494001 25.616001 23.494001C 17.884014 23.494001 11.616001 29.762014 11.616001 37.494003M 16.397999 48.029999L 25.616001 37.493999L 25.616001 23.493999M 25.616001 37.493999L 39.615997 37.493999" /></g>
    <text x="513.0" y="311.0" text-anchor="start" style="font-size:21px; font-weight:800" fill="#4338ca">Initial</text>
    <text x="513.0" y="335.0" text-anchor="start" style="font-size:21px; font-weight:800" fill="#4338ca">Population</text>
    <text x="513.0" y="357.0" text-anchor="start" style="font-size:15.5px; font-weight:400" fill="#5f6b73">Majority vs.</text>
    <text x="513.0" y="376.0" text-anchor="start" style="font-size:15.5px; font-weight:400" fill="#5f6b73">minority share</text>
    <circle cx="340.0" cy="404.0" r="38" fill="#ccfbf1" stroke="#0f766e" stroke-width="2.5" />
    <g transform="translate(302.6 366.6) scale(1.1)" fill="none" stroke="#0f766e" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M 30 29C 30 31.209139 31.790861 33 34 33C 36.209137 33 38 31.209139 38 29C 38 26.790861 36.209137 25 34 25C 31.790861 25 30 26.790861 30 29M 42 41C 41.061569 37.348705 37.769966 34.796112 34 34.796112C 30.230038 34.796112 26.938435 37.348705 26 41ZM 31 14C 31 15.656855 32.343147 17 34 17C 35.656853 17 37 15.656855 37 14C 37 12.343145 35.656853 11 34 11C 32.343147 11 31 12.343145 31 14M 30 21C 30 18.790861 31.790861 17 34 17C 36.209137 17 38 18.790861 38 21M 50 34C 50 35.656853 51.343147 37 53 37C 54.656857 37 56 35.656853 56 34C 56 32.343147 54.656857 31 53 31C 51.343147 31 50 32.343147 50 34M 49 41C 49 38.790863 50.790859 37 53 37C 55.209141 37 57 38.790863 57 41M 31 50C 31 51.656857 32.343147 53 34 53C 35.656853 53 37 51.656857 37 50C 37 48.343147 35.656853 47 34 47C 32.343147 47 31 48.343147 31 50M 30 57C 30 54.790859 31.790861 53 34 53C 36.209137 53 38 54.790859 38 57M 12 34C 12 35.656853 13.343145 37 15 37C 16.656855 37 18 35.656853 18 34C 18 32.343147 16.656855 31 15 31C 13.343145 31 12 32.343147 12 34M 11 41C 11 38.790863 12.790861 37 15 37C 17.209139 37 19 38.790863 19 41M 41.720001 20.74C 45.030121 22.300657 47.785912 24.833191 49.619999 28M 43.619999 26.059999L 41.720001 20.74L 47.040001 18.84M 23.6 28.5L 17.940001 28.860001L 17.58 23.220001M 24.42 47.580002L 25.860001 53.060001L 20.380001 54.48M 44.459999 46L 50.060001 45.139999L 50.919998 50.740002M 18 28.860001C 19.737522 25.402809 22.542809 22.597521 26 20.860001M 25.860001 53.060001C 22.408672 51.314369 19.605629 48.511326 17.860001 45.059998M 50 45.139999C 48.254368 48.591324 45.451324 51.394367 42 53.139996" /></g>
    <text x="340.0" y="470.0" text-anchor="middle" style="font-size:21px; font-weight:800" fill="#0f766e">Social Learning</text>
    <text x="340.0" y="492.0" text-anchor="middle" style="font-size:15.5px; font-weight:400" fill="#5f6b73">Observe neighbors, update choice</text>
    <circle cx="217.0" cy="333.0" r="38" fill="#ccfbf1" stroke="#0f766e" stroke-width="2.5" />
    <g transform="translate(194.2 310.2) scale(1.9)" fill="#0f766e"><path fill="#0f766e" d="M12 10c-1.1 0-2 .9-2 2s.9 2 2 2s2-.9 2-2s-.9-2-2-2m6 2c0-3.3-2.7-6-6-6s-6 2.7-6 6c0 2.2 1.2 4.1 3 5.2l1-1.7c-1.2-.7-2-2-2-3.4c0-2.2 1.8-4 4-4s4 1.8 4 4c0 1.5-.8 2.8-2 3.4l1 1.7c1.8-1 3-3 3-5.2M12 2C6.5 2 2 6.5 2 12c0 3.7 2 6.9 5 8.6l1-1.7c-2.4-1.4-4-4-4-6.9c0-4.4 3.6-8 8-8s8 3.6 8 8c0 3-1.6 5.5-4 6.9l1 1.7c3-1.7 5-4.9 5-8.6c0-5.5-4.5-10-10-10"/></g>
    <text x="167.0" y="311.0" text-anchor="end" style="font-size:21px; font-weight:800" fill="#0f766e">Norm</text>
    <text x="167.0" y="335.0" text-anchor="end" style="font-size:21px; font-weight:800" fill="#0f766e">Diffusion</text>
    <text x="167.0" y="357.0" text-anchor="end" style="font-size:15.5px; font-weight:400" fill="#5f6b73">Minority choice</text>
    <text x="167.0" y="376.0" text-anchor="end" style="font-size:15.5px; font-weight:400" fill="#5f6b73">spreads</text>
    <circle cx="217.0" cy="191.0" r="38" fill="#ccfbf1" stroke="#0f766e" stroke-width="2.5" />
    <g transform="translate(194.2 168.2) scale(1.9)" fill="#0f766e"><path fill="#0f766e" d="M13 20V8.8c.5-.2 1-.5 1.3-.9l3.5 1.3l-2.9 6.8c-.5 2 1 3 3.5 3s4.1-1 3.5-3l-2.6-6.3l.9.3l.7-1.9L15 6c0-1.2-.7-2.4-2-2.9c-1.2-.5-2.5 0-3.3.9L3.9 2l-.7 1.8l1.6.6L2.1 11c-.5 2 1 3 3.5 3s4.1-1 3.5-3L6.6 5.1L9 6c0 1.2.7 2.4 2 2.9V20H2v2h20v-2zm6.9-4h-3l1.5-3.8zM7.1 11h-3l1.5-3.8zm4-5.3c.2-.5.8-.8 1.3-.6s.8.8.6 1.3s-.8.8-1.3.6s-.8-.8-.6-1.3"/></g>
    <text x="167.0" y="169.0" text-anchor="end" style="font-size:21px; font-weight:800" fill="#0f766e">Tipping</text>
    <text x="167.0" y="193.0" text-anchor="end" style="font-size:21px; font-weight:800" fill="#0f766e">Point</text>
    <text x="167.0" y="215.0" text-anchor="end" style="font-size:15.5px; font-weight:400" fill="#5f6b73">Minority size that</text>
    <text x="167.0" y="234.0" text-anchor="end" style="font-size:15.5px; font-weight:400" fill="#5f6b73">flips the norm</text>
    <circle cx="208" cy="525" r="7" fill="#eef2ff" stroke="#4338ca" stroke-width="2" /><text x="222" y="530" style="font-size:15px; font-weight:600" fill="#243033">Setup</text>
    <circle cx="300" cy="525" r="7" fill="#ccfbf1" stroke="#0f766e" stroke-width="2" /><text x="314" y="530" style="font-size:15px; font-weight:600" fill="#243033">Emergent dynamics</text>
  </svg>
</template>

<style scoped>
.simulation-cycle {
  display: block;
  width: 100%;
  height: auto;
  font-family: "Inter", "Noto Sans JP", sans-serif;
}
</style>
