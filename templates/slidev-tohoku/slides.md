---
theme: neversink
title: Well-being Lecture
info: Academic Slidev template for a lecture on well-being
drawings:
  persist: false
fonts:
  sans: 'Inter, Noto Sans JP, Noto Sans SC, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif'
  serif: 'Noto Serif JP, Noto Serif SC, serif'
  mono: 'Roboto Mono, monospace'
  provider: google
  weights: '300,400,500,600,700,800'
aspectRatio: 16/9
canvasWidth: 1280
transition: slide-left
duration: 20min
color: navy-light
layout: intro
colorSchema: light
css: unocss
mdc: true
mermaid:
  theme: neutral
  themeVariables:
    primaryColor: '#eef2ff'
    primaryTextColor: '#4338ca'
    primaryBorderColor: '#6366f1'
    lineColor: '#6366f1'
    secondaryColor: '#f0fdfa'
    tertiaryColor: '#fff'
---

<style src="./style.css"></style>

<div class="page" style="height:720px;">
  <img class="logo" src="./assets/tohokuuniversitylogo.png" alt="Tohoku University" />
  <div class="kicker">Lecture template | Well-being</div>
  <div style="position:absolute; left:58px; right:58px; top:228px;">
    <h1 class="claim wide" style="font-size:52px; color:#000000;">Well-being Lecture Title</h1>
    <p style="font-size:28px; max-width:980px; margin-top:24px; color:#111827; font-weight:800; line-height:1.35;">Subtitle or lecture theme goes here</p>
    <p style="font-size:22px; max-width:980px; margin-top:34px; color:#111827; font-weight:700; line-height:1.35;">Presenter Name</p>
  </div>
  <div style="position:absolute; left:58px; right:58px; bottom:58px; color:#374151; font-size:22px; line-height:1.35; font-weight:700;">
    Affiliation / Course Name<br>
    <span style="font-size:20px; font-weight:600;">YYYY年MM月DD日</span>
  </div>
</div>

<!--
Opening note:
Introduce the lecture question and why well-being matters for today's audience.
-->

---

<div class="page">
  <div class="kicker">Overview</div>
  <h2 class="claim wide">What should students understand by the end?</h2>
  <p class="support">Use this slide to preview the lecture path. Keep each item short enough to read at a glance.</p>

  <div class="metric-rail">
    <div class="metric" v-click="1">
      <div class="value">01</div>
      <div class="label">Conceptual definition</div>
    </div>
    <div class="metric" v-click="2">
      <div class="value">02</div>
      <div class="label">Measurement strategy</div>
    </div>
    <div class="metric" v-click="3">
      <div class="value">03</div>
      <div class="label">Social determinants</div>
    </div>
    <div class="metric" v-click="4">
      <div class="value">04</div>
      <div class="label">Policy or research implications</div>
    </div>
  </div>
  <div class="footer"><span>Well-being Lecture</span><span>02</span></div>
</div>

<!--
Speaker note:
Replace the four blocks with the exact learning goals of your lecture.
-->

---

<div class="page">
  <div class="kicker">Concept</div>
  <h2 class="claim wide">Well-being is more than the absence of distress.</h2>
  <p class="support">Frame well-being as a multidimensional concept that combines subjective evaluations, emotional experience, functioning, and social context.</p>

  <div class="two-column">
    <div class="card" v-click="1">
      <h3>Subjective well-being</h3>
      <ul>
        <li>Life satisfaction</li>
        <li>Positive and negative affect</li>
        <li>Domain-specific satisfaction</li>
      </ul>
    </div>
    <div class="card green" v-click="2">
      <h3>Eudaimonic well-being</h3>
      <ul>
        <li>Meaning and purpose</li>
        <li>Autonomy and competence</li>
        <li>Relationships and contribution</li>
      </ul>
    </div>
  </div>
  <div class="footer"><span>Conceptual framing</span><span>03</span></div>
</div>

---

<div class="page">
  <div class="kicker">Measurement</div>
  <h2 class="claim wide">A measurement choice is also a theory choice.</h2>
  <p class="support">Use the matrix to compare competing indicators, datasets, or survey modules.</p>

  <div class="matrix">
    <div class="matrix-head">Measure</div>
    <div class="matrix-head">What it captures</div>
    <div class="matrix-cell" v-click="1">Life satisfaction scale</div>
    <div class="matrix-cell" v-click="1">Global cognitive evaluation</div>
    <div class="matrix-cell" v-click="2">Daily affect reports</div>
    <div class="matrix-cell" v-click="2">Short-term emotional states</div>
    <div class="matrix-cell" v-click="3">Social connection index</div>
    <div class="matrix-cell" v-click="3">Relational and community resources</div>
  </div>
  <div class="footer"><span>Operationalization</span><span>04</span></div>
</div>

---

<div class="page">
  <div class="kicker">Mechanism</div>
  <h2 class="claim wide">From social conditions to well-being outcomes.</h2>

  <div class="flow">
    <div class="flow-step" v-click="1">
      <div class="num">01</div>
      <div class="name">Resources</div>
      <div class="desc">Income, time, health, relationships, institutional support.</div>
    </div>
    <div class="arrow" v-click="2">→</div>
    <div class="flow-step" v-click="2">
      <div class="num">02</div>
      <div class="name">Capabilities</div>
      <div class="desc">What people are realistically able to do and be.</div>
    </div>
    <div class="arrow" v-click="3">→</div>
    <div class="flow-step" v-click="3">
      <div class="num">03</div>
      <div class="name">Evaluation</div>
      <div class="desc">How people interpret their lives, emotions, and futures.</div>
    </div>
  </div>
  <div class="footer"><span>Analytical model</span><span>05</span></div>
</div>

---

<div class="page">
  <div class="kicker">Evidence</div>
  <h2 class="claim wide">Replace this slide with the key empirical result.</h2>
  <p class="support">For a real lecture, insert a chart, table, or figure here and keep the takeaway sentence in the title.</p>

  <div class="quote-panel" v-click="1">
    <p>One result, one interpretation, one implication.</p>
    <span>Suggested structure: finding → explanation → why it matters</span>
  </div>
  <div class="footer"><span>Evidence placeholder</span><span>06</span></div>
</div>

---

<div class="page">
  <div class="kicker">Discussion</div>
  <h2 class="claim wide">Questions for class discussion.</h2>

  <div class="two-column">
    <div class="card amber" v-click="1">
      <h3>Interpretation</h3>
      <p>Which dimensions of well-being are emphasized or hidden by this framework?</p>
    </div>
    <div class="card rose" v-click="2">
      <h3>Application</h3>
      <p>What would change if the target group, institution, or cultural context changed?</p>
    </div>
  </div>
  <div class="footer"><span>Discussion</span><span>07</span></div>
</div>

---

<div class="page">
  <div class="kicker">Closing</div>
  <h2 class="claim wide">Takeaway: well-being is both personal experience and social structure.</h2>
  <p class="support">End with the one sentence students should remember, then connect it to the next lecture, assignment, or reading.</p>

  <div class="metric-rail">
    <div class="metric">
      <div class="value">Define</div>
      <div class="label">Clarify the construct</div>
    </div>
    <div class="metric">
      <div class="value">Measure</div>
      <div class="label">Choose indicators carefully</div>
    </div>
    <div class="metric">
      <div class="value">Explain</div>
      <div class="label">Link mechanisms to context</div>
    </div>
    <div class="metric">
      <div class="value">Apply</div>
      <div class="label">Translate evidence into action</div>
    </div>
  </div>
  <div class="footer"><span>Thank you</span><span>08</span></div>
</div>
