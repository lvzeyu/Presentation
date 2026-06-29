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

<!-- Title slide: HTML needed for absolute-positioned layout -->
<div class="title-page">
  <img class="title-qr" src="./assets/presentation-qr.svg" alt="Presentation QR code" />
  <img class="logo" src="./assets/tohokuuniversitylogo.png" alt="Tohoku University" />
  <div style="position:absolute; left:58px; right:200px; top:220px;">
    <h1 style="font-family:'Noto Serif JP','Noto Serif SC',serif; font-size:55px; font-weight:800; color:#000; line-height:1.08; margin:0;">Emergence and Evolution of Social Norms among LLM Agents</h1>
    <p style="font-size:26px; margin-top:18px; color:##4338ca; font-weight:700; line-height:1.4;">Graduate School of Arts and Letters, Tohoku University</p>
    <p style="font-size:22px; margin-top:10px; color:#111827; font-weight:700;">Zeyu Lyu</p>
  </div>
  <div style="position:absolute; left:58px; right:58px; bottom:54px; color:#374151; font-size:20px; font-weight:700; line-height:1.4;">
    Annual Conference of the International Network of Analytical Sociology, Oxford<br>
    <span style="font-size:18px; font-weight:600;">3rd July 2026</span>
  </div>
</div>

---

<div class="kicker">Overview</div>

## Key Takeaways

<p class="support wide">This presentation covers [1] improving reproducibility and interpretability of LLM-agent social simulation, and [2] simulating the formation and transformation of social norms via systematic control of LLM agents.</p>

<div class="two-column">
  <div class="card" v-click="1">
    <h3>Reproducibility & interpretability</h3>
    <ul>
      <li>Use activation steering to control the behavior and decision-making of LLM agents.</li>
    </ul>
  </div>
  <div class="card green" v-click="2">
    <h3>Simulation of social norms</h3>
    <ul>
      <li>Activation-steered agents for controlling personality and preference in social simulation.</li>
    </ul>
  </div>
</div>

<div class="footer"><span>Annual Conference of the International Network of Analytical Sociology</span><span>02</span></div>


---

<div class="kicker">Introduction</div>

## LLM Agents in Social Simulation

<p class="support wide">LLM agents show great promise in social simulation by providing an efficient way to model heterogeneous individuals, generate realistic interactions, and explore complex social dynamics</p>

<div style="display:grid; grid-template-columns:3fr 2fr; gap:60px; margin-top:28px; align-items:start;">
  <ul>
    <li v-click="1">LLM agents are promising for social simulation
      <ul>
        <li>Can produce context-dependent and human-like behavior (<a href="https://dl.acm.org/doi/10.1145/3586183.3606763">Park et al., 2023</a>, <a href="https://arxiv.org/abs/2504.02234">Anthis et al., 2025</a>)</li>
      </ul>
    </li>
    <li v-click="2">Prompt-Based Application of LLM Agents
      <ul>
        <li>Define the characteristics and behaviors of agents in a simple, prompt-based way</li>
        <li>Human-like cognitive patterns such as memory, planning, and reflection can further be incorporated as prompts</li>
      </ul>
    </li>
  </ul>
  <img v-click="1" src="./image/Generative_AI.png" style="width:70%; border-radius:6px;" />
</div>

<div class="footer"><span>Annual Conference of the International Network of Analytical Sociology</span><span>04</span></div>


---

<div class="kicker">Introduction</div>

## Limitations of LLM Agents

<p class="support wide">Despite their promise, LLM agents remain difficult to reproduce, control, and explain.</p>

<v-clicks>

- Societal and Representational Biases
    - Explicit and implicit stereotypes related to race, gender, religion, and culture. ([Acerbi et al., 2025](https://www.pnas.org/doi/10.1073/pnas.2416228122); [Gallegos et al., 2024](https://doi.org/10.1162/coli_a_00524); [Kotek et al., 2024](https://arxiv.org/abs/2403.14727))
    - Models are typically trained to be “helpful and harmless”, thus filter conflictual, aggressive, or “dark” social dynamics even when such behaviors are realistic and essential for understanding phenomena([Bail, 2024](https://www.pnas.org/doi/10.1073/pnas.2314021121)).

- Convergence towards the “Average Persona”
    - LLM agents may produce responses that are plausible on average but fail to capture the full heterogeneity of real human populations. ([Argyle et al., 2023](https://www.cambridge.org/core/journals/political-analysis/article/abs/out-of-one-many-using-language-models-to-simulate-human-samples/035D7C8A55B237942FB6DBAD7CAA4E49); [Wu et al., 2025](https://arxiv.org/abs/2506.19806))

- Challenges in Reproducibility and Interpretability of LLM Agents
    - Sensitive to the prompt formulation [(Loya et al., 2023)](https://aclanthology.org/2023.findings-emnlp.241/)
    - The black-box nature creates difficulties in verifying the reliability and validity of simulation results.

</v-clicks>

<div class="footer"><span>Annual Conference of the International Network of Analytical Sociology</span><span>04</span></div>


---

<div class="kicker">Introduction</div>

## Mapping the "Mind" of LLMs

<p class="support wide">The output of LLMs may be controlled by the intervention on its internal representations</p>

<div style="display:grid; grid-template-columns:3fr 2fr; gap:60px; margin-top:28px; align-items:start;">
  <ul>
    <li v-click="1">Internal representations may encode the knowledge, concepts, style, and preferences of LLMs
      <ul>
        <li>Can produce context-dependent and human-like behavior (<a href="https://dl.acm.org/doi/10.1145/3586183.3606763">Park et al., 2023</a>, <a href="https://arxiv.org/abs/2504.02234">Anthis et al., 2025</a>)</li>
      </ul>
    </li>
    <li v-click="2">Representation engineering enables the control of LLM agents by intervening in their internal representations
      <ul>
        <li>Control LLMs from inside the model rather than only through external prompts</li>
      </ul>
    </li>
  </ul>
  <img v-click="1" src="./image/golden_bridge.png " style="width:100%; border-radius:6px;" />
</div>

<div class="footer"><span>Annual Conference of the International Network of Analytical Sociology</span><span>04</span></div>

---

<div class="kicker">Introduction</div>

## Activation Steering

<p class="support wide">Identify specified representations and manipulate these representations during inference to control LLMs</p>

<div style="display:grid; grid-template-columns:3.55fr 2fr; gap:40px; margin-top:28px; align-items:start;">
  <div>
    <img src="./image/steering1.png" style="width:100%; border-radius:4px;" />
    <ul class="caption-list">
      <li>Construct paired prompts that differ along exactly one conceptual dimension.</li>
      <li>Record the residual stream activations in the model and compute the difference between the two conditions</li>
    </ul>
  </div>
  <div>
    <img src="./image/steering2.png" style="width:100%; border-radius:4px;" />
    <ul class="caption-list">
      <li>Add a concept vector to the current hidden state, thereby shifting subsequent generation toward behaviors associated with the target concept.</li>
    </ul>
  </div>
</div>

<div class="footer"><span>Annual Conference of the International Network of Analytical Sociology</span><span>04</span></div>


---

<div class="kicker">Research Question</div>

## Issues in the Simulation of Norms with LLM Agents

<div class="quote-panel">
  <p>Key research question in the social simulation of norms</p>
  <span style="font-size:24px;">How do norms emerge, stabilize, and change through interactions among agents?</span>
</div>

<v-clicks>

- Reproducibility
    - Prompt-based manipulation of agent characteristics and norm context is inherently unstable
- Interpretability
    - The black-box nature of LLMs makes it difficult to determine whether norms emerge from interaction-driven dynamics or from the model’s pre-existing internal biases
</v-clicks>

<div class="footer"><span>Annual Conference of the International Network of Analytical Sociology</span><span>04</span></div>

---

<div class="kicker">Research Question</div>

## Activation-steered Agents for Simulation of Norms

<v-clicks>

- Conduct activation steering and simulation based on <em>meta-llama/Llama-3.1-8B-Instruct</em>.
- How does the personality of agents affect norm outcomes?
    - Construct the steering vector to control the degree of altruism of agents.
    - Examine how the degree of altruism affects outcomes across various behavioral experiments

- How can an increasing minority of agents with different beliefs lead to norm change?
    - Construct the steering vector to control agents' beliefs toward a specific issue.
    - Examine how interactions among agents lead to norm change.
</v-clicks>

<div class="quote-panel" style="margin-top:28px; padding-top:22px; padding-bottom:22px;" v-click="4">
  <span style="font-size:26px;"><strong style="color:white; font-weight:850;">Main Purpose:</strong> Rather than providing implications about norms, this study aims to demonstrate how activation-steered agents can address core issues in social simulation</span>
</div>


<div class="footer"><span>Annual Conference of the International Network of Analytical Sociology</span><span>04</span></div>

---

<div class="kicker">Research Question</div>

## Steering Activation that Controls the Altruism of Agents

<v-clicks>

- Contrastive scenario pairs that are identical except for altruistic or selfish behaviors
    - *I donated to charity to get a tax deduction*
    - *I donated to charity to help people in need*
- Extract residual stream activations by computing the difference

$$\mathbf{v}^{(l)} = \frac{1}{N} \sum_{i=1}^{N} \left( \mathbf{a}^{(l)}(x_i^+) - \mathbf{a}^{(l)}(x_i^-) \right)$$

- Apply the steering vector with a scalar coefficient $\alpha$
    - $\alpha > 0$: steer toward altruism
    - $\alpha < 0$: steer toward selfishness

$$\mathbf{a}^{(l)}_\text{steered} = \mathbf{a}^{(l)} + \alpha \cdot \mathbf{v}^{(l)}$$
</v-clicks>



<div class="footer"><span>Annual Conference of the International Network of Analytical Sociology</span><span>04</span></div>

---
clicks: 3
---

<div class="kicker">Results</div>

## Activation-steered Agents in Behavioral Experiment

<p class="support wide">The output of LLMs may be controlled by intervention on their internal representations</p>

<div style="display:grid; grid-template-columns:3fr 2fr; gap:60px; margin-top:28px; align-items:start;">
  <ul>
    <li v-click="1">Experiments whose outcomes are typically influenced by the altruism of agents
      <ul>
        <li>Prompt the LLM agent to engage in the experiment and describe their decisions and reasoning.</li>
        <li>Use an external LLM (GPT-4) to evaluate the extent of altruism in agents' decisions</li>
      </ul>
    </li>
    <li v-click="2">Adjustment of the steering coefficient can control simulation results
      <ul>
        <li v-show="$clicks >= 2">Lower values of the steering coefficient lead to more selfish behaviors</li>
        <li v-show="$clicks >= 3">Higher values of the steering coefficient lead to more altruistic behaviors</li>
      </ul>
    </li>
  </ul>
  <img v-show="$clicks == 1" src="./image/figure3a_altruism_ratings_by_game-1.png" style="width:100%; border-radius:6px;" />
  <img v-show="$clicks === 2" src="./image/figure3a_altruism_ratings_by_game-2.png" style="width:100%; border-radius:6px;" />
  <img v-show="$clicks >= 3" src="./image/figure3a_altruism_ratings_by_game-3.png" style="width:100%; border-radius:6px;" />
</div>

<div class="footer"><span>Annual Conference of the International Network of Analytical Sociology</span><span>04</span></div>


---
clicks: 4
---

<div class="kicker">Results</div>

## Activation-steered Agents for Simulation of Norms

<p class="support wide">Aim to control the potential bias of belief for the simulation of norm changes</p>

<div v-click="1">

- Context: *Whether payment should be shared or rotated among participants*
    - Agents decide their payment behavior based on their preferences and the behaviors they observe from others.
    - Over repeated interactions, such adaptive decision-making processes can facilitate the emergence, stabilization, and transformation of payment norms.

</div>

<div style="display:grid; grid-template-columns:3.5fr 2fr; gap:10px; margin-top:28px; align-items:start;">
  <ul>
    <li v-click="2">Use activation steering to manipulate preferences, enabling more controlled social simulations.
      <ul>
        <li>The original LLM tends to overwhelmingly choose shared payment.</li>
        <li>Activation steering can adjust agents' preferences regarding payment.</li>
      </ul>
    </li>
  </ul>
  <div style="position:relative;">
    <img v-show="$clicks === 2" src="./image/p_share_vs_alpha_barplot-1.png" style="width:100%; border-radius:6px;" />
    <img v-show="$clicks === 3" src="./image/p_share_vs_alpha_barplot-2.png" style="width:100%; border-radius:6px;" />
    <img v-show="$clicks >= 4" src="./image/p_share_vs_alpha_barplot-3.png" style="width:100%; border-radius:6px;" />
    <div v-click="3" style="position:absolute; width:0; height:0; overflow:hidden;"></div>
    <div v-click="4" style="position:absolute; width:0; height:0; overflow:hidden;"></div>
  </div>
</div>



<div class="footer"><span>Annual Conference of the International Network of Analytical Sociology</span><span>06</span></div>


---
clicks: 4
---

<div class="kicker">Results</div>

## Activation-steered Agents for Simulation of Norms

<p class="support wide">Activation-steered agents enable a controllable simulation setting and influence simulation outcomes.</p>

<div v-click="1">

- Simulation of norm changes using LLM agents
    - 50 agents are connected in a small-world network.
    - In each round, agents update their choice of shared or rotated payment based on their preferences and observations.

</div>

<div style="display:grid; grid-template-columns:2fr 2fr; gap:10px; margin-top:28px; align-items:start;">
  <ul>
    <li v-click="2">Different agent configurations lead to different outcomes.
      <ul>
        <li>Due to the biased preference toward shared payment, agents based on the original LLM always converge to a shared payment norm.</li>
        <li>Simulations based on activation-steered agents can lead to different outcomes.</li>
      </ul>
    </li>
  </ul>
  <div style="position:relative;">
    <img v-show="$clicks === 2" src="./image/m0_control_trajectories-1.png" style="width:100%; border-radius:6px;" />
    <img v-show="$clicks === 3" src="./image/m0_control_trajectories-2.png" style="width:100%; border-radius:6px;" />
    <img v-show="$clicks >= 4" src="./image/m0_control_trajectories-3.png" style="width:100%; border-radius:6px;" />
    <div v-click="3" style="position:absolute; width:0; height:0; overflow:hidden;"></div>
    <div v-click="4" style="position:absolute; width:0; height:0; overflow:hidden;"></div>
  </div>
</div>



<div class="footer"><span>Annual Conference of the International Network of Analytical Sociology</span><span>06</span></div>


---
clicks: 4
---

<div class="kicker">Results</div>

## Activation-steered Agents for Simulation of Norms

<p class="support wide">Activation-steered agents enable a controllable simulation setting and influence simulation outcomes.</p>


<div style="display:grid; grid-template-columns:2.5fr 2fr; gap:5px; margin-top:8px; align-items:start;">
  <ul>
    <li v-click="1">Simulation of how an increasing minority with contrasting preferences can affect norm change.
      <ul>
        <li>The majority refers to agents supporting shared payment, while the minority refers to agents supporting rotated payment</li>
        <li>50 agents are connected in a small-world network.</li>
        <li>The number of majority agents varies across different scenarios.</li>
        <li>Agents' commitment to norms is controlled by activation steering.</li>
      </ul>
    </li>
    <li v-click="2">Changes in social norms are driven by both the increasing presence of a minority group and the strength of its commitment to alternative beliefs.
    </li>
  </ul>
  <div>
    <img v-click="2" src="./image/smallworld_proprior_trajectories-1.png" style="width:72%; border-radius:4px;" />
    <img v-click="3" src="./image/smallworld_proprior_trajectories-2.png" style="width:72%; border-radius:4px; margin-top:8px;" />
  </div>
</div>



<div class="footer"><span>Annual Conference of the International Network of Analytical Sociology</span><span>06</span></div>


---

<div class="kicker">Summary</div>

## Activation Steering in Social Simulation

<p class="support wide"></p>


<div class="card" v-click="1">
    <h3>Activation steering represents a promising method for improving the reproducibility and interpretability of social simulations based on LLM agents</h3>
    <ul>
      <li>Activation steering enables the control of agent properties such as personality and belief</li>
      <li>Reduces the influence of model- and prompt-level variations on simulation outcomes.</li>
      <li>Enhances interpretability by clarifying the relationship between controlled conditions and simulation outcomes.</li>
    </ul>
</div>

<div class="card rose" v-click="2">
    <h3>Activation steering is not always effective </h3>
    <ul>
      <li>Relevant concepts may be distributed across multiple layers and intertwined with other representations, making it difficult for a single steering vector to reliably control the model’s behavior (<a href="https://arxiv.org/abs/2505.22637">Braun et al., 2025</a>).</li>
      <li>Activation steering is both context-sensitive and model-dependent.</li>
    </ul>
  </div>
