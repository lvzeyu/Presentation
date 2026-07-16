---
theme: neversink
title: Aligning the Personality and Preferences of LLMs through Representation Engineering
info: Social Stratification and Mobility 3rd International Workshop
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
    Social Stratification and Mobility 3rd International Workshop, The University of Tokyo<br>
    <span style="font-size:18px; font-weight:600;">18th July 2026</span>
  </div>
</div>

<!--

-->

---

<div class="kicker">Overview</div>

## Key Takeaways

<p class="support wide">This presentation covers [1] improving reproducibility and interpretability of the application of LLM-agent in social science, and [2] simulating the formation and transformation of social norms via systematic control of LLM agents.</p>

<div class="two-column">
  <div class="card" v-click="1">
    <h3>Reproducibility & Interpretability</h3>
    <ul>
      <li>Reproducibility and interpretability is great challenge in the application of LLM in social science.</li> 
      <li>Use activation steering to control the behavior and decision-making of LLM agents.</li>
    </ul>
  </div>
  <div class="card green" v-click="2">
    <h3>Simulation of social norms (as an example)</h3>
    <ul>
      <li>Activation-steered agents for controlling personality and preference in social simulation.</li>
    </ul>
  </div>
</div>

<div class="footer"><span>Aligning the Personality and Preferences of LLMs through Representation Engineering</span><span>02</span></div>

<!--
First of all, I would lile to have the main takeaways of the presentation.

[click] First, we want to show why reproducibility and interpretability are important challenges when we use LLM agents for social simulation. And here we aim to address how activation steering can be considered as a promising method to control agent behavior and thus address these issues.

[click] Also, We used this method to simulate social norms. In particular, I will show how sterring activation can help us control personality-related and belief-related properties of agents in social simulation.

-->

---

<div class="kicker">Introduction</div>

## LLM Agents as a Silicon Sample

<p class="support wide">LLM agents show potential to to simulate human responses in social surveys and experienment</p>

<div style="display:grid; grid-template-columns:3fr 2fr; gap:60px; margin-top:28px; align-items:start;">
  <ul>
    <li v-click="1">Replicate the response of human populations in social survey
      <ul>
        <li>LLMs can be prompted to act as respondents with specific demographic characteristics and generate consistent answers.(<a href="https://aclanthology.org/2026.acl-long.1927/">Ahnert et al., 2026</a>, <a href="https://www.cambridge.org/core/journals/political-analysis/article/abs/out-of-one-many-using-language-models-to-simulate-human-samples/035D7C8A55B237942FB6DBAD7CAA4E49">Argyle et al., 2023</a>, <a href="https://www.cambridge.org/core/journals/political-analysis/article/synthetic-replacements-for-human-survey-data-the-perils-of-large-language-models/B92267DC26195C7F36E63EA04A47D2FE">Bisbee et al., 2024</a>)</li>
      </ul>
    </li>
    <li v-click="2">Generate human-like responses in social science surveys and psychological experiments.
      <ul>
        <li>LLM predictions show high correlattion with original treatment effects in social science experiments conducted with human population(<a href="https://www.nature.com/articles/s43588-025-00840-7">Cui et al., 2025</a>, <a href="https://www.nature.com/articles/s41586-026-10742-x">Hewitt et al., 2026</a>)</li>
      </ul>
    </li>
  </ul>
  <div style="display:flex; flex-direction:column; gap:64px;">
    <img v-click="1" src="./image/silcon_sample_survey.png" style="width:80%; border-radius:6px;" />
  </div>
</div>

<div class="footer"><span>Aligning the Personality and Preferences of LLMs through Representation Engineering</span><span>04</span></div>




---

<div class="kicker">Introduction</div>

## LLM Agents in Social Simulation

<p class="support wide">LLM agents show great promise in social simulation by providing an efficient way to model heterogeneous individuals, generate realistic interactions, and explore complex social dynamics</p>

<div style="display:grid; grid-template-columns:3fr 2fr; gap:60px; margin-top:28px; align-items:start;">
  <ul>
    <li v-click="1">LLM agents are promising for social simulation
      <ul>
        <li>Can produce context-dependent and human-like behavior (<a href="https://arxiv.org/abs/2504.02234">Anthis et al., 2025</a>, <a href="https://dl.acm.org/doi/10.1145/3586183.3606763">Park et al., 2023</a>)</li>
      </ul>
    </li>
    <li v-click="2">Prompt-Based application of LLM agents
      <ul>
        <li>Define the characteristics and behaviors of agents in a simple, prompt-based way</li>
        <li>Human-like cognitive patterns such as memory, planning, and reflection can further be incorporated as prompts</li>
      </ul>
    </li>
  </ul>
  <img v-click="1" src="./image/Generative_AI.png" style="width:70%; border-radius:6px;" />
</div>

<div class="footer"><span>Aligning the Personality and Preferences of LLMs through Representation Engineering</span><span>04</span></div>

<!--
Recently, LLM agents have received increasing attention in social simulation.

[click] Basically, what we need to do is write the prompt. For the simulation, we can define the agents’ profiles and characteristics, and then ask the LLMs to behave according to these definitions. The LLMs will then generate the agents’ actions, responses, and interactions based on the given prompts.

[click] Furthermore, we can even write more detailed prompt to incorporate more advanced features like memory, planning, or reflection into the agent through prompts. These techniques can make agents even more similar to human with a quite flexible and easy to implement. We need not to handle complex mathmatical computation anymore and it just looks good, since several previous studies have argued that they successfully relaize the simulation.
-->


---

<div class="kicker">Introduction</div>

## Limitations of LLM Agents

<p class="support wide">Despite their promise, LLM agents remain difficult to reproduce, control, and explain.</p>

<v-clicks>

- Societal and representational biases
    - Explicit and implicit stereotypes related to race, gender, religion, and culture. ([Acerbi et al., 2025](https://www.pnas.org/doi/10.1073/pnas.2416228122); [Gallegos et al., 2024](https://doi.org/10.1162/coli_a_00524); [Kotek et al., 2024](https://arxiv.org/abs/2403.14727))
    - Models are typically trained to be “helpful and harmless”, thus filter conflictual, aggressive, or “dark” social dynamics even when such behaviors are realistic and essential for understanding phenomena([Bail, 2024](https://www.pnas.org/doi/10.1073/pnas.2314021121); [Zhang et al., 2025](https://journals.sagepub.com/doi/10.1177/00491241251327130)).

- Convergence towards the “Average Persona”
    - LLM agents may produce responses that are plausible on average but fail to capture the full heterogeneity of real human populations. ([Argyle et al., 2023](https://www.cambridge.org/core/journals/political-analysis/article/abs/out-of-one-many-using-language-models-to-simulate-human-samples/035D7C8A55B237942FB6DBAD7CAA4E49); [Wang et al., 2025](https://www.nature.com/articles/s42256-025-00986-z); [Wu et al., 2025](https://arxiv.org/abs/2506.19806))

- Challenges in reproducibility and interpretability of LLM agents
    - Sensitive to the prompt formulation ([Cummins, 2025](https://arxiv.org/abs/2509.13397), [Loya et al., 2023](https://aclanthology.org/2023.findings-emnlp.241/))
    - The black-box nature creates difficulties in verifying the reliability and validity of results.
</v-clicks>

<div class="footer"><span>Aligning the Personality and Preferences of LLMs through Representation Engineering</span><span>04</span></div>

<!--
However, there are still several important limitations when we use them for social simulation.

[click] First, as you know, LLMs can have inherent biases. On the one hand, this raises doubts about whether LLM agents can really replicate different types of people, or whether they are mainly good at replicating the behavior of specific groups. On the other hand, because many models are trained to be helpful and harmless, they often avoid aggressive or harmful behaviors, even when these behaviors are important for understanding real social dynamics.

[click] Also, LLM agents often represent a kind of generalized or average person, while real social phenomena usually depend on heterogeneity and variation among individuals.

[click] Furthermore, LLMs also have limitations in reproducibility and interpretability. The outcome can be very different just because of a subtle change in the prompt. And it is hard for us to understand why, because the model still works like a black box if we only use prompts.
-->


---

<div class="kicker">Introduction</div>

## Mapping the "Mind" of LLMs

<p class="support wide">The output of LLMs may be controlled by the intervention on its internal representations</p>

<div style="display:grid; grid-template-columns:3fr 2fr; gap:60px; margin-top:28px; align-items:start;">
  <ul>
    <li v-click="1"><a href="https://bbycroft.net/llm">Representation space</a> is high-dimensional space of internal activations produced while LLM processes the input.</li>
    <li v-click="2">Internal representations may encode the knowledge, concepts, style, and preferences of LLMs
      <ul>
        <li>Can produce context-dependent and human-like behavior (<a href="https://arxiv.org/abs/2504.02234">Anthis et al., 2025</a>, <a href="https://dl.acm.org/doi/10.1145/3586183.3606763">Park et al., 2023</a>)</li>
      </ul>
    </li>
    <li v-click="3">Representation engineering enables the control of LLM agents by intervening in their internal representations
    </li>
  </ul>
  <img v-click="1" src="./image/golden_bridge.png" style="width:100%; border-radius:6px;" />
</div>

<div class="footer"><span>Aligning the Personality and Preferences of LLMs through Representation Engineering</span><span>04</span></div>

<!--
Addressing these limitations requires a better understanding of LLMs and, if possible, making LLMs more controllable. This is because relying only on prompts seems unreliable. Recently, some studies have suggested that we may be able to control LLMs by changing specific internal features of the model.

[click] So here is an example to show how this idea works. For example, if we ask an LLM a question like, “What is your physical form?”, it will usually answer that it is an AI. For example, if we ask an LLM a question like, “What is your physical form?”, it will usually answer that it is an AI. The underlying mechanism is that the LLM performs a series of computations inside the neural network. And the results are determined by the model’s internal representations. Speicifically, some representations are connected to a specific concept, including the identidy of LLM think who they are. So, if we can find these representations and modify them, the LLM’s identity can also be changed. As shown in this example, the LLM may even consider itself to be the Golden Gate Bridge.

[click] In this term, we may control the LLMs through representation engineering. Compared to prompts, this gives us a promising way to control LLM agents more systematically.
-->

---

<div class="kicker">Introduction</div>

## Activation Steering

<p class="support wide">Identify specified representations and manipulate these representations during inference to control LLMs</p>

<div style="display:grid; grid-template-columns:3.55fr 2fr; gap:40px; margin-top:28px; align-items:start;">
  <div>
    <img src="./image/steering1.png" style="width:100%; border-radius:4px;" />
    <ul class="caption-list">
      <li>Construct paired prompts that differ along exactly one conceptual dimension.</li>
      <li>Record the representations in the model and compute the difference between the two conditions</li>
    </ul>
  </div>
  <div>
    <img src="./image/steering2.png" style="width:100%; border-radius:4px;" />
    <ul class="caption-list">
      <li>Add a concept vector to the current hidden state, thereby shifting subsequent generation toward behaviors associated with the target concept.</li>
    </ul>
  </div>
</div>

<div class="footer"><span>Aligning the Personality and Preferences of LLMs through Representation Engineering</span><span>04</span></div>

<!--

Specifically, a typical way of representation engineering is steering activation. 

First, we need to identify a direction in the model’s representation space that corresponds to a target concept. A typical way to do this is to prepare contrastive prompts that mainly differ in one specific aspect.
For example, we can prepare two almost same sentences. The only difference is the word “honest” versus “dishonest.” Because the inputs are different, the internal representations of the LLM will also be different. We can then expect that the difference between these two representations indicates how the LLM represents the concept of “honesty.”

Sometimes, these representations may have a linear direction. This means that if we add the concept vector to the hidden state, it can change the model’s internal processing. As a result, we may be able to guide the model’s later output toward the target behavior.
-->

---
layout: section
---

<div>

# Application of steering activated LLM agents

<hr>

<span class='text-gray-500 text-2xl'>
Employ steering activated LLM agents to implementing social simulation of norm to improving <strong style="color:#4338ca;">repruducibility</strong> and <strong style="color:#4338ca;">interpretability</strong>.
</span>

</div>

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

<div class="footer"><span>Aligning the Personality and Preferences of LLMs through Representation Engineering</span><span>04</span></div>

<!--
Based on these intuitions, we can apply this method to investigate the norm question, that is, 
How do norms emerge, stabilize, and change through interactions among agents?

[click] Again, as we just discussed, LLMs have limitations in reproducibility.

[click] Furthmore, in a norm emerges in a simulation, we need to ask where it comes from. While due to the limitation in interpretablity, we can not figure out is it really produced by interaction among agents, or is it already built into the model's internal bias? 
-->

---

<div class="kicker">Research Question</div>

## Activation-steered Agents for Simulation of Norms

<v-clicks>

- Conduct activation steering based on <em>meta-llama/Llama-3.1-8B-Instruct</em>.
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


<div class="footer"><span>Aligning the Personality and Preferences of LLMs through Representation Engineering</span><span>04</span></div>

<!--
Here, we cna find steering activation seems to be useful. And we have tried to make some application.

[click] We use Llama-3.1-8B-Instruct and conduct steering activation on it.

[click:2] The first question is about personality. More specifically, I ask how the altruism of agents affects simulation outcomes. To examine this, I construct a steering vector that controls the degree of altruism, and then test whether changing this degree leads to different decisions in behavioral experiments.

[click:3] The second question is about norm change. Here, I focus on a setting where a minority group has beliefs that differ from the majority. I construct a steering vector to control agents' belief-related preferences, and then examine how interactions among agents can produce changes in the collective norm.

[click:4] While I want to claim that our main purpose is not to give implications of norms here. Rather, I want to show that activation-steered agents can help address the reproducibility and interpretability problems that appear when we use LLM agents for social simulation.
-->

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



<div class="footer"><span>Aligning the Personality and Preferences of LLMs through Representation Engineering</span><span>04</span></div>

<!--
First, we investigate whether activation steering can be used to control the degree of altruism. This serves as a test of whether activation steering is effective for manipulating personality-related traits. 

The process of steering activation just follows method we introduce.

[click] We start from several contrastive scenario pairs that descibe a altruistic or selfish behaviors.

[click:2] Then, we compute the average difference between the activations for altruistic examples and selfish examples. This average difference becomes the altruism steering vector at a given layer.

[click:3] Finally, during inference, I add this vector to the model's activation with a coefficient alpha to control its strength of influence. If alpha is positive, the model is steered toward more altruistic behavior. If alpha is negative, the model is steered in the opposite direction, toward more selfish behavior. In this way, we expect altruism becomes a controllable feature rather than only a prompt description.
-->

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

<div class="footer"><span>Aligning the Personality and Preferences of LLMs through Representation Engineering</span><span>04</span></div>

<!--

[click] We use LLMs to conduct several classic economic games where outcomes are usually related to altruism. In each case, the LLM agent is asked to make a decision and explain its reasoning. Then I use GPT-4 as an external evaluator to rate how altruistic the agent's decision is. And we consider it as the metric.

We adjust the LLM through activation steering and use the same setting to see whether there are any differences in the results.

We find that a more altruistic agent tends to make more altruistic choices. This means that activation steering can help us control the model’s behavior. Compared with prompt-based control, activation steering may provide a more direct and stable way to control LLM agents.

-->


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



<div class="footer"><span>Aligning the Personality and Preferences of LLMs through Representation Engineering</span><span>06</span></div>

<!--
We also consider another context. Here, our purpose is to investigate how norm changes. 

[click] Specifically, we assume a simple payment norm problem: whether payment should be shared among participants or rotated among them. Each agent decides its payment behavior based on its own preference and the behaviors it observes from others. Through repeated interaction, this type of decision process can produce the emergence or change of a payment norm.

[click] The problem is that LLMs seem to have an original preference for a certain norm. If we ask the original LLM to make a choice several times, we find that it has a strong bias toward the shared-payment option. This bias may influence the later simulation results.

[click] And similarly, we can use steering activation to control the LLM preference by adjusting steering coefficient. As shown the figure, LLM with differenct steering activation shows different tendency and we can contorl it as we expected.

-->


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



<div class="footer"><span>Aligning the Personality and Preferences of LLMs through Representation Engineering</span><span>06</span></div>

<!--
After confirming that activation steering can control individual payment preferences, we can incorporate them into the mutiple agent system.

[click] In this simulation, 50 agents are connected in a small-world network. In each round, agents decide whether to choose shared payment or rotated payment. Their choices depend on their own preference and the behavior they observe from neighboring agents connected in the network. 

[click:2] We can find that different agent configurations lead to different outcomes. Due to the biased preference toward shared payment, agents based on the original LLM always converge to a shared payment norm.

[click:3] Here, we change the agents’ preferences so that they are more likely to choose rotating payment.When the steering toward rotating payment is weak, the agents’ choices are relatively balanced. As a result, both norms may appear.However, when we make the preference for rotating payment strong enough, rotating payment can also become the main norm outcome.



-->


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
        <li>The majority refers to agents supporting rotated payment, while the minority refers to agents supporting shared payment</li>
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



<div class="footer"><span>Aligning the Personality and Preferences of LLMs through Representation Engineering</span><span>06</span></div>

<!--

Beyond that, we also conduct simulation focusing on whether an increasing minority with a contrasting preference can affect norm change.

[click] In this setting, the majority supports rotate payment, while the minority supports shared payment. There are still 50 agents, but now they have different preferences. I also use activation steering to control how strongly these agents are committed to this specific norm.

[click] We are interested in how many minority agents can lead to a change in the norm. First, we consider the case where 10 agents initially prefer shared payment.　And we have weak and strong preference cases. We can see that, in the initial phase, there is no big difference between the weak case and the strong case. However, agents with weak commitment are more likely to be influenced by the observation that most others choose rotate payment. As a result, they tend to change their choice, and the norm gradually converges to the majority norm. In contrast, when the commitment is strong enough, the norm does not converge to the majority norm so easily.

[click] And if we increased the number of minority, we will find that both weak and strong case can lead to a change in the norm.

[click] Thus, we can say that changes in social norms are driven by both the increasing presence of a minority group and the strength of its commitment to alternative beliefs. The main point here is that activation steering does not only control the agents’ initial preferences. It also seems to affect their later behavior, so that their behaviors remain consistent over several rounds in simulation.
-->


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

<!--
Let me summarize the presentation.

[click] The main message is that activation steering can be a useful method for social simulation with LLM agents. It allows us to control agent properties, such as altruism or belief-related preferences, through internal representations rather than only through prompts. This can reduce the influence of prompt-level variation and make the relationship between experimental conditions and simulation outcomes more interpretable.

In the examples I showed today, changing the steering coefficient changed individual decisions in behavioral games, adjusted payment preferences, and produced different collective norm outcomes in multi-agent simulations. So activation steering gives us a way to connect micro-level agent control with macro-level social patterns.

[click] At the same time, activation steering is not a complete solution. Some concepts may be distributed across multiple layers or mixed with other representations, so a single steering vector may not always control behavior reliably. The effect is also context-sensitive and model-dependent.

So my conclusion is that activation-steered agents should be seen as a promising methodological tool, not as a universal fix. They can help us build more controlled and interpretable social simulations, but they also require careful validation for each model, concept, and simulation setting.

Thank you very much. I look forward to your questions and comments.


-->

