---
theme: neversink
title: Emergence and Evolution of Social Norms among LLM Agents
info: Conference presentation on social norm emergence in multi-agent LLM systems
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
  <div class="kicker">INAS 2026</div>
  <div style="position:absolute; left:58px; right:58px; top:228px;">
    <h1 class="claim wide" style="font-size:55px; color:#000000;">Emergence and Evolution of Social Norms among LLM Agents</h1>
    <p style="font-size:28px; max-width:980px; margin-top:24px; color:#111827; font-weight:700; line-height:1.4;">Graduate School of Arts and Letters, Tohoku University</p>
    <p style="font-size:24px; max-width:980px; margin-top:24px; color:#111827; font-weight:700; line-height:1.4;">Zeyu Lyu</p>
  </div>
  <div style="position:absolute; left:58px; right:58px; bottom:58px; color:#374151; font-size:20px; line-height:1.35; font-weight:700;">
    Annual Conference of the International Network of Analytical Sociology@Oxford<br>
    <span style="font-size:18px; font-weight:600;">3rd July 2026</span>
  </div>
</div>

<!--
Opening note:
Introduce the core question: can large language model agents, through repeated interaction, spontaneously develop and sustain shared behavioral norms?
-->


---

<div class="page">
  <div class="kicker">Overview</div>
  <h2 class="claim wide">Key Takeaways</h2>
  <p class="support　wide">This presentation covers two main topics: (1) how to improve the reproducibility and interpretability of LLM-agent in social simulation, and (2) how to simulate the formation and transformation of social norm through systematic control of LLM agents.</p>

  <div class="two-column">
    <div class="card" v-click="1">
      <h3>Improve the reproducibility and interpretability of LLM-agents in social simulation</h3>
      <ul style="font-size:40px;">
        <li>Use activation steering to control the behavior and decision-making processes of LLM agents.</li>
      </ul>
    </div>
    <div class="card green" v-click="2">
      <h3>Simulation of social norm based on activation-steered LLM agents</h3>
      <ul style="font-size:40px;">
        <li>Activation-steered LLM agents for controling the personality and preference in soical simulation</li>
      </ul>
    </div>
  </div>
  <div class="footer"><span>Annual Conference of the International Network of Analytical Sociology</span><span>03</span></div>
</div>

---

<div class="page">
  <div class="kicker">Introduction</div>
  <h2 class="claim wide">LLMs Agents in Social Simulation</h2>
  <p class="support　wide">LLMs agents represents great potential in social simulation, while also lead to concerns on reproducability and explanability</p>

  <ul class="body-list">
    <li v-click="1">LLM agents are promising for social simulation
      <ul>
        <li>LLM agents can produce context-dependent, human-like, and role-sensitive behavior in an effective and efficient way <span style="font-size:0.75em; color:var(--muted); font-weight:400;">(Park et al., 2023)</span></li>
        <li>計算的手法の適用により、ウェルビーイングの理解と分析に新たな視点を提示し、既存研究の知見を検証・補完する</li>
      </ul>
    </li>
    <li v-click="2">講義の目的と達成目標
      <ul>
        <li>計算人文社会科学の研究パラダイムに対する基本的な理解</li>
        <li>自然言語処理技術を用いて複雑な概念を測定する方法を理解し、その応用可能性を把握する</li>
      </ul>
    </li>
  </ul>

  <div class="footer"><span>Annual Conference of the International Network of Analytical Sociology</span><span>06</span></div>
</div>

---

<div class="page">
  <div class="kicker">Overview</div>
  <h2 class="claim wide">Research roadmap</h2>
  <p class="support">Four interconnected questions that structure this presentation.</p>

  <div class="metric-rail">
    <div class="metric" v-click="1">
      <div class="value">01</div>
      <div class="label">Motivation & background</div>
    </div>
    <div class="metric" v-click="2">
      <div class="value">02</div>
      <div class="label">Experimental framework</div>
    </div>
    <div class="metric" v-click="3">
      <div class="value">03</div>
      <div class="label">Emergence of norms</div>
    </div>
    <div class="metric" v-click="4">
      <div class="value">04</div>
      <div class="label">Evolution & stability</div>
    </div>
  </div>
  <div class="footer"><span>Emergence and Evolution of Social Norms among LLM Agents</span><span>02</span></div>
</div>

<!--
Speaker note:
Walk through each block briefly. Tell the audience what we are doing and why it matters before diving into details.
-->

---

<div class="page">
  <div class="kicker">Motivation</div>
  <h2 class="claim wide">LLM agents increasingly act in shared environments.</h2>
  <p class="support">As multi-agent deployments scale, coordination without explicit rules becomes a critical open problem.</p>

  <div class="two-column">
    <div class="card" v-click="1">
      <h3>The coordination challenge</h3>
      <ul>
        <li>Agents must interact repeatedly</li>
        <li>No centralized rule-setter</li>
        <li>Conflicting objectives emerge</li>
      </ul>
    </div>
    <div class="card green" v-click="2">
      <h3>Why social norms?</h3>
      <ul>
        <li>Norms reduce coordination costs</li>
        <li>Emerge endogenously from interaction</li>
        <li>Shape long-run agent behavior</li>
      </ul>
    </div>
  </div>
  <div class="footer"><span>Motivation</span><span>03</span></div>
</div>

---

<div class="page">
  <div class="kicker">Background</div>
  <h2 class="claim wide">From social science to computational agents.</h2>
  <p class="support">Classic norm theory meets large language models in a new multi-agent paradigm.</p>

  <div class="flow">
    <div class="flow-step" v-click="1">
      <div class="num">01</div>
      <div class="name">Social norm theory</div>
      <div class="desc">Axelrod, Bicchieri: norms as shared expectations enforced by sanctioning.</div>
    </div>
    <div class="arrow" v-click="2">→</div>
    <div class="flow-step" v-click="2">
      <div class="num">02</div>
      <div class="name">Agent-based models</div>
      <div class="desc">Evolutionary game theory and simulated populations.</div>
    </div>
    <div class="arrow" v-click="3">→</div>
    <div class="flow-step" v-click="3">
      <div class="num">03</div>
      <div class="name">LLM multi-agent systems</div>
      <div class="desc">Language-capable agents with reasoning, memory, and social priors.</div>
    </div>
  </div>
  <div class="footer"><span>Background</span><span>04</span></div>
</div>

---

<div class="page">
  <div class="kicker">Research question</div>
  <h2 class="claim wide">Can LLM agents develop stable shared norms without explicit instruction?</h2>

  <div class="two-column" style="margin-top:40px;">
    <div class="card amber" v-click="1">
      <h3>Emergence</h3>
      <p>Do consistent behavioral regularities arise spontaneously from repeated agent interaction?</p>
    </div>
    <div class="card rose" v-click="2">
      <h3>Evolution</h3>
      <p>How do norms change, stabilize, or break down as the agent population or environment shifts?</p>
    </div>
  </div>
  <div class="footer"><span>Research question</span><span>05</span></div>
</div>

---

<div class="page">
  <div class="kicker">Methodology</div>
  <h2 class="claim wide">Experimental framework: norm game with LLM agents.</h2>
  <p class="support">A repeated interaction environment designed to elicit normative behavior.</p>

  <div class="matrix">
    <div class="matrix-head">Design element</div>
    <div class="matrix-head">Specification</div>
    <div class="matrix-cell" v-click="1">Agent model</div>
    <div class="matrix-cell" v-click="1">GPT-4o / Claude 3.5 Sonnet</div>
    <div class="matrix-cell" v-click="2">Interaction protocol</div>
    <div class="matrix-cell" v-click="2">Repeated public-goods / coordination game</div>
    <div class="matrix-cell" v-click="3">Memory & context</div>
    <div class="matrix-cell" v-click="3">Rolling interaction history injected as prompt context</div>
  </div>
  <div class="footer"><span>Methodology</span><span>06</span></div>
</div>

---

<div class="page">
  <div class="kicker">Results — Emergence</div>
  <h2 class="claim wide">Behavioral regularities emerge within tens of rounds.</h2>
  <p class="support">Agents converge on consistent action profiles without any explicit norm instruction.</p>

  <div class="quote-panel" v-click="1">
    <p>Norm convergence rate exceeded 80 % within 30 interaction rounds across all model configurations.</p>
    <span>Finding → LLMs bring strong social priors that accelerate norm emergence compared to classical ABMs</span>
  </div>
  <div class="footer"><span>Results — Emergence</span><span>07</span></div>
</div>

---

<div class="page">
  <div class="kicker">Results — Evolution</div>
  <h2 class="claim wide">Norms are fragile under population turnover and adversarial agents.</h2>
  <p class="support">Stability depends on agent memory depth and the proportion of norm-violating agents introduced.</p>

  <div class="two-column">
    <div class="card" v-click="1">
      <h3>Stabilizing factors</h3>
      <ul>
        <li>Long interaction history</li>
        <li>Consistent sanctioning language</li>
        <li>Homogeneous model population</li>
      </ul>
    </div>
    <div class="card rose" v-click="2">
      <h3>Destabilizing factors</h3>
      <ul>
        <li>High agent turnover (&gt; 40 %)</li>
        <li>Adversarial prompt injection</li>
        <li>Mixed-model heterogeneity</li>
      </ul>
    </div>
  </div>
  <div class="footer"><span>Results — Evolution</span><span>08</span></div>
</div>

---

<div class="page">
  <div class="kicker">Discussion</div>
  <h2 class="claim wide">Implications for alignment and multi-agent system design.</h2>

  <div class="two-column">
    <div class="card amber" v-click="1">
      <h3>Alignment implications</h3>
      <p>Emergent norms may reinforce or undermine intended values — they require monitoring, not just initial specification.</p>
    </div>
    <div class="card green" v-click="2">
      <h3>Design implications</h3>
      <p>Memory architecture and population dynamics are first-class levers for norm governance in deployed multi-agent systems.</p>
    </div>
  </div>
  <div class="footer"><span>Discussion</span><span>09</span></div>
</div>

---

<div class="page">
  <div class="kicker">Conclusion</div>
  <h2 class="claim wide">LLM agents are social actors — their norms deserve study.</h2>
  <p class="support">This work opens a systematic research agenda at the intersection of computational social science and AI safety.</p>

  <div class="metric-rail">
    <div class="metric">
      <div class="value">Emerge</div>
      <div class="label">Norms arise without instruction</div>
    </div>
    <div class="metric">
      <div class="value">Evolve</div>
      <div class="label">Stability is contingent</div>
    </div>
    <div class="metric">
      <div class="value">Design</div>
      <div class="label">Memory & population matter</div>
    </div>
    <div class="metric">
      <div class="value">Govern</div>
      <div class="label">Norms require active oversight</div>
    </div>
  </div>
  <div class="footer"><span>Thank you</span><span>10</span></div>
</div>
