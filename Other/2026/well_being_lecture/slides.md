---
theme: neversink
title: 計算的手法によりウェルビーイングを測る
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
  <div class="kicker">人文社会科学特別科目</div>
  <div style="position:absolute; left:58px; right:58px; top:228px;">
    <h1 class="claim wide" style="font-size:58px; color:#000000; font-weight:800;">計算的手法によりウェルビーイングを測る</h1>
    <p style="font-size:28px; max-width:980px; margin-top:24px; color:#111827; font-weight:800; line-height:1.35;"></p>
    <p style="font-size:35px; max-width:980px; margin-top:34px; color:#111827; font-weight:500; line-height:1.35;">東北大学文学研究科　計算人文社会学</p>
    <p style="font-size:30px; max-width:980px; margin-top:34px; color:#111827; font-weight:500; line-height:1.35;">呂沢宇</p>
  </div>
  <div style="position:absolute; left:58px; right:58px; bottom:58px; color:#374151; font-size:22px; line-height:1.35; font-weight:700;"><br>
    <span style="font-size:20px; font-weight:600;">2026年6月25日</span>
  </div>
</div>


---

<div class="page">
  <div class="kicker">イントロ</div>
  <h2 class="claim wide">ウェルビーイングとは</h2>
  <p class="support">ウェルビーイングは、多様な構成要素や側面から成り立つ</p>

  <div class="two-column">
    <div class="card" v-click="1">
      <h3>精神的ウェルビーイング</h3>
      <ul>
        <li>主観的幸福感（SWB）</li>
        <li>人生の目的</li>
      </ul>
    </div>
    <div class="card green" v-click="2">
      <h3>物質・身体的ウェルビーイング</h3>
      <ul>
        <li>経済的豊かさ</li>
        <li>身体的健康</li>
      </ul>
    </div>
  </div>
  <div class="two-column">
    <div class="card amber" v-click="3">
      <h3>社会的ウェルビーイング</h3>
      <ul>
        <li>社会的つながり</li>
        <li>人間関係</li>
      </ul>
    </div>
    <div class="card rose" v-click="4">
      <h3>制度的ウェルビーイング</h3>
      <ul>
        <li>平和</li>
        <li>民主主義・公正</li>
      </ul>
    </div>
  </div>
  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>03</span></div>
</div>


---

<div class="page">
  <div class="kicker">イントロ</div>
  <h2 class="claim wide">ウェルビーイングの測定</h2>
  <p class="support wide">ウェルビーイングは多面的かつ主観的な概念であるため、多様な尺度で測定する必要がある</p>

  <div class="matrix compact">
    <div class="matrix-head">ウェルビーイングの構成側面</div>
    <div class="matrix-head">代表的な尺度・指標</div>
    <div class="matrix-cell" v-click="1">主観的ウェルビーイング</div>
    <div class="matrix-cell" v-click="1">生活満足度尺度（SWLS）、Cantril Ladder</div>
    <div class="matrix-cell" v-click="2">精神的ウェルビーイング</div>
    <div class="matrix-cell" v-click="2">PANAS、日々のポジティブ・ネガティブ感情</div>
    <div class="matrix-cell" v-click="3">社会的ウェルビーイング</div>
    <div class="matrix-cell" v-click="3">社会的支援、孤独感尺度、地域への信頼</div>
    <div class="matrix-cell" v-click="4">身体的ウェルビーイング</div>
    <div class="matrix-cell" v-click="4">主観的健康感、SF-12 / SF-36、睡眠・運動指標</div>
  </div>
  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>04</span></div>
</div>


---

<div class="page">
  <div class="kicker">イントロ</div>
  <h2 class="claim wide">ウェルビーイング測定における問題点</h2>
  <p class="support wide">既存研究で多く用いられる自己申告形式の測定方法では問題点がある</p>

  <div class="quote-panel-stack">
    <div class="quote-panel compact blue" v-click="1">
      <div class="quote-item">
        <div>自己申告には回答バイアスが生じやすい<small>社会的望ましさ、記憶の誤差、質問文の解釈差に影響される</small></div>
      </div>
    </div>
    <div class="quote-panel compact green" v-click="2">
      <div class="quote-item">
        <div>長期的な変化を捉えにくい<small>一時点の回答では、ライフコースや歴史上の変化が見えにくい</small></div>
      </div>
    </div>
    <div class="quote-panel compact rose" v-click="3">
      <div class="quote-item">
        <div>研究者が事前に指定したカテゴリに限定される<small>回答者自身の言葉や予期しないウェルビーイングの側面を取りこぼす可能性がある</small></div>
      </div>
    </div>
  </div>
  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>06</span></div>
</div>


---

<div class="page">
  <div class="kicker">イントロ</div>
  <h2 class="claim wide">計算的手法によるウェルビーイングの測定</h2>
  <p class="support wide">計算人文社会科学は、社会や文化、言語、歴史、人間行動に関する問題を、デジタルデータや計算モデルを用いて分析する</p>

  <ul class="body-list">
    <li v-click="1">計算的手法によるウェルビーイングの測定方法と研究事例
      <ul>
        <li>大規模データと自然言語処理技術を用いてウェルビーイングを測定する</li>
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

  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>06</span></div>
</div>


---

<div class="page">
  <div class="kicker">自然言語処理の基礎</div>
  <h2 class="claim wide">自然言語処理の基本概念</h2>
  <p class="support wide">自然言語処理は、人間が日常的に使っている自然言語をコンピュータに処理させる技術</p>

  <ul class="body-list">
    <li v-click="1">言語は人間にとって自然なものであっても、コンピュータにとっては処理が難しい
      <ul>
        <li>自然言語は大量の非構造化データとして現れる</li>
        <li>意味の解釈には、常に明確な規則があるわけではない</li>
      </ul>
    </li>
  </ul>

  <ul class="body-list">
    <li v-click="2">言語をコンピュータが扱える数値表現に変換する必要がある
      <ul>
        <li>テキストを数値化することで、深層学習モデルに入力し、多様な自然言語処理タスクを実装することができる</li>
        <li>一般的には、ベクトルで表現することが多い</li>
      </ul>
    </li>
    <li v-click="2">しかし、言語の数値化は簡単なことではない
    </li>
  </ul>

  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>06</span></div>
</div>


---

<div class="page">
  <div class="kicker">自然言語処理の基礎</div>
  <h2 class="claim wide">単語分散表現</h2>
  <p class="support wide">単語分散表現とは、単語の意味を数値ベクトルとして表現する方法である</p>

  <ul class="body-list">
    <li v-click="1">テキストを、より小さい単位である単語に分割してから数値化の方法を検討
      <ul>
        <li>単語のベクトル表現を組み合わせて、テキスト全体の表現を構築することができる</li>
      </ul>
    </li>
  </ul>

<v-click>

```mermaid {theme: 'neutral', scale: 1}
stateDiagram
    direction LR

    state "My major is sociology" as A
    state "My/major/is/sociology" as B

    A --> B: Tokenization
```

<div class="quote-panel compact primaryColor" v-click="1">
      <div class="quote-item">
        <div>「良い」単語分散表現とは
          <ul>
            <li>単語とベクトルの対応関係</li>
            <li>ベクトルは単語の意味情報を表現することができる</li>
          </ul>
        </div>
      </div>
  </div>

</v-click>

  

  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>06</span></div>
</div>


---


<div class="page">
  <div class="kicker">自然言語処理の基礎</div>
  <h2 class="claim wide">単語分散表現の作成方法：One-hot Encoding</h2>
  <p class="support wide">語彙に含まれる全単語を列挙し、各単語を「その単語の位置だけ 1、他は全て 0」のベクトルで表す</p>

  <v-clicks depth="2">

- 次の英語文を例に考える："I like NLP and AI"
- <span v-mark.red="1">テキスト内の各単語から語彙表を作成し、それぞれの単語に一意のインデックスを割り当てる</span>
- 各ベクトルでは、その単語に対応する位置だけが 1 となり、それ以外は 0 となる

| 単語   | One-hot Encoding        |
|--------|------------------------|
| I      | [1, 0, 0, 0, 0]        |
| like   | [0, 1, 0, 0, 0]        |
| NLP    | [0, 0, 1, 0, 0]        |
| and    | [0, 0, 0, 1, 0]        |
| AI     | [0, 0, 0, 0, 1]        |

</v-clicks>


  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>06</span></div>
</div>


---


<div class="page">
  <div class="kicker">自然言語処理の基礎</div>
  <h2 class="claim wide">単語分散表現の作成方法：One-hot Encoding</h2>
  <p class="support wide">One-hot Encodingの問題点</p>

  <div class="content-split compact-split">
    <ul class="body-list">
      <li v-click="1">計算の効率性上の問題
        <ul>
          <li v-click="2">高次元で疎なベクトルであるため、学習効率が低くなりやすい</li>
          <li v-click="2">語彙数が増えるほどベクトルが大きくなる</li>
        </ul>
      </li>
      <li v-click="3">意味関係を反映できない
        <ul>
          <li v-click="4">ベクトル間の距離や角度は、語の意味的な類似性や関係性を<span v-mark.red="5">反映できない</span></li>
          <li v-click="4">語と語の意味関係は、ベクトル演算によって<span v-mark.red="5">表現できない</span></li>
        </ul>
      </li>
    </ul>
    <div class="figure-frame">
      <img src="./image/one-hot.png" alt="One-hot Encoding" />
    </div>
  </div>

  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>06</span></div>
</div>


---


<div class="page">
  <div class="kicker">自然言語処理の基礎</div>
  <h2 class="claim wide">単語分散表現の作成方法：Word2Vec</h2>
  <p class="support wide">Word2Vecでは、単語の意味をベクトル空間上の位置関係として表現できる</p>

  <div class="figure-frame">
      <img src="./image/word2vec.png" alt="word2vec" />
    </div>

  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>06</span></div>
</div>


---


<div class="page">
  <div class="kicker">自然言語処理の基礎</div>
  <h2 class="claim wide">Word2Vecの原理</h2>
  <p class="support wide">Word2Vecでは、分布仮説に基づいて単語の意味を学習するアルゴリズムが設計されている</p>

  > "You shall know a word by the company it keeps（単語はその周囲の文脈語から理解できる）"

<div style="position: relative; height: 400px;">
  <div v-click="1" style="position: absolute; top: 0; left: 50%; transform: translateX(-50%); width: 800px;">
    <img src="./image/tezguino2-min.png" width="800" />
  </div>

  <div v-click="2" style="position: absolute; top: 0; left: 50%; transform: translateX(-50%); width: 800px;">
    <img src="./image/tezguino3-min.png" width="800" />
  </div>

  <div v-click="3" style="position: absolute; top: 0; left: 50%; transform: translateX(-50%); width: 800px;">
    <img src="./image/tezguino6-min.png" width="800" />
  </div>

  <div v-click="4" style="position: absolute; top: 0; left: 50%; transform: translateX(-50%); width: 800px;">
    <img src="./image/tezguino9-min.png" width="800" />
  </div>
</div>

  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>06</span></div>
</div>


---


<div class="page">
  <div class="kicker">自然言語処理の基礎</div>
  <h2 class="claim wide">Word2Vecの原理</h2>
  <p class="support wide">ニューラルネットワークを用いて単語の予測問題を解く学習の過程で、各単語に対応するベクトルが少しずつ更新され、結果として、似た文脈で使われる単語は、ベクトル空間上でも近い位置に配置される</p>


<div style="position: relative; height: 400px;">
  <div v-click="[1,2]" style="position: absolute; top: 0; left: 50%; transform: translateX(-50%); width: 880px; text-align: center;">
    <img src="./image/window_two_vocs1-min.png" alt="Word2Vec window example" style="width: 100%; height: auto;" />
  </div>
  <div v-click="[2,3]" style="position: absolute; top: 0; left: 50%; transform: translateX(-50%); width: 560px; text-align: center;">
    <img src="./image/one_step_alg-min.png" alt="Word2Vec one-step algorithm" style="width: 100%; height: auto;" />
  </div>
  <div v-click="[3,4]" style="position: absolute; top: 0; left: 50%; transform: translateX(-50%); width: 800px; text-align: center;">
    <img src="./image/loss_intuition-min.png" alt="Word2Vec loss intuition" style="width: 100%; height: auto;" />
  </div>
  <div v-click="4" style="position: absolute; top: 0; left: 50%; transform: translateX(-50%); width: 420px; text-align: center;">
    <img src="./image/word_embedding_nn.png" alt="Word embedding neural network" style="width: 100%; height: auto;" />
  </div>
</div>

  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>06</span></div>
</div>


---

<div class="page">
  <div class="kicker">Word2Vecの社会科学における応用</div>
  <h2 class="claim wide">Word2Vecの社会科学研究における新たな手法としての応用可能性</h2>
  <p class="support"></p>

  <div class="metric-rail vertical wide">
    <div class="metric" v-click="1">
      <div class="value">01</div>
      <div class="metric-copy">
        <div class="label">Word2Vecによるテキスト解析</div>
        <div class="metric-desc">単語をベクトル表現に変換することで、テキストの意味的情報を捉え、様々な自然言語処理タスクに応用する</div>
      </div>
    </div>
    <div class="metric metric-black" v-click="2">
      <div class="value">02</div>
      <div class="metric-copy">
        <div class="label">Word2Vecを用いた概念の理解</div>
        <div class="metric-desc">
          <ul>
            <li>Word2Vecでは、複雑な概念を系統的に解析することができる</li>
            <ul>
                <li>単語をベクトルとして表現することで、ベクトル間の計算を通じて、意味構造や関係性を定量的に分析できる</li>
              </ul>
            <li>Word2Vecの単語ベクトル表現は学習コーパスに依存し、コーパス中に現れる単語の共起パターンと意味関係を反映する
              <ul>
                <li>異なる時代のコーパスは、その時代的背景における特定概念の意味的特質を反映できる</li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>02</span></div>
</div>


---

<div class="page">
  <div class="kicker">Word2Vecの社会科学における応用</div>
  <h2 class="claim wide">Word2Vecに基づく意味変化の解析 <a href="https://www.pnas.org/doi/10.1073/pnas.1720347115" target="_blank" rel="noopener noreferrer">(Garg et al., 2018)</a></h2>
  <p class="support wide">単語分散表現を用いて、過去100年間のアメリカ社会におけるジェンダーおよび人種に関するステレオタイプの変化を定量的に分析した</p>

<div class="mermaid-center">

```mermaid {theme: 'neutral', scale: 0.85}
graph TB
    A[Google Books コーパス] --> B1[1900-1910年代のテキスト]
    A --> B2[1920-1930年代のテキスト]
    A --> B3[...]
    A --> B4[1990-2000年代のテキスト]
    
    B1 --> C1[Word2Vecモデル1]
    B2 --> C2[Word2Vecモデル2]
    B3 --> C3[...]
    B4 --> C4[Word2Vecモデルn]
    
    C1 --> D1[単語ベクトル1<br/>1900年代の意味を反映]
    C2 --> D2[単語ベクトル2<br/>1920年代の意味を反映]
    C3 --> D3[...]
    C4 --> D4[単語ベクトルn<br/>1990年代の意味を反映]
    

    
    style A fill:#eef2ff
    style C1 fill:#dbeafe
    style C2 fill:#dbeafe
    style C3 fill:#f3f4f6
    style C4 fill:#dbeafe
    style B3 fill:#f3f4f6
    style D3 fill:#f3f4f6
```

</div>

  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>03</span></div>
</div>


---

<div class="page">
  <div class="kicker">Word2Vecの社会科学における応用</div>
  <h2 class="claim wide">Word2Vecに基づく意味変化の解析 <a href="https://www.pnas.org/doi/10.1073/pnas.1720347115" target="_blank" rel="noopener noreferrer">(Garg et al., 2018)</a></h2>
  <p class="support wide">単語分散表現を用いてステレオタイプを定量的に測定する</p>

  <ul class="body-list">
    <li v-click="1">
      <span class="formula-inline">Relative Norm Distance = Σ<sub>v<sub>m</sub> ∈ M</sub> ( ||v<sub>m</sub> - v<sub>1</sub>||<sub>2</sub> - ||v<sub>m</sub> - v<sub>2</sub>||<sub>2</sub> )</span>
      <ul>
        <li><span class="math-var">M</span>: 参照対象語（例：<span v-mark.circle.orange="2">職業名や形容詞</span>）のベクトル集合</li>
        <li><span class="math-var">v<sub>m</sub></span>: 集合 <span class="math-var">M</span> に含まれる各参照対象語の単語ベクトル</li>
        <li><span class="math-var">v<sub>1</sub></span>: 第1の集団（例：男性）の代表ベクトル</li>
        <li><span class="math-var">v<sub>2</sub></span>: 第2の集団（例：女性）の代表ベクトル</li>
      </ul>
    </li>
    <li v-click="3">指標の意味
      <ul>
        <li><span v-mark.red="4">負の値は、参照対象語が第1の集団（男性）とより強く関連していることを示す</span></li>
        <li><span v-mark.red="4">正の値は、参照対象語が第2の集団（女性）とより強く関連していることを示す</span></li>
        <li><mark>絶対値は、いずれかの集団との関連の強さを表す</mark></li>
      </ul>
    </li>
  </ul>


  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>03</span></div>
</div>


---

<div class="page">
  <div class="kicker">Word2Vecの社会科学における応用</div>
  <h2 class="claim wide">Word2Vecに基づく意味変化の解析 <a href="https://www.pnas.org/doi/10.1073/pnas.1720347115" target="_blank" rel="noopener noreferrer">(Garg et al., 2018)</a></h2>
  <p class="support wide">単語ベクトルの意味空間において、女性と男性は特定の職業と結びつきやすいのか？</p>

  <div class="pnas-figure-grid">
    <div class="pnas-figure-panel" v-click="1">
      <input id="pnas-fig-zoom-1" class="zoom-check" type="checkbox" />
      <label for="pnas-fig-zoom-1" class="zoom-label">
        <img src="./image/pnas_fig.jpeg" alt="PNAS figure showing occupational gender associations" />
      </label>
      <ul class="body-list compact">
        <li>単語ベクトルに反映された職業に関するステレオタイプ傾向を、職業の性別比率と比較する</li>
      </ul>
    </div>
    <div class="pnas-figure-panel" v-click="2">
      <input id="pnas-fig-zoom-2" class="zoom-check" type="checkbox" />
      <label for="pnas-fig-zoom-2" class="zoom-label">
        <img src="./image/pnas_fig02.jpeg" alt="PNAS figure showing changes in gender association gaps" />
      </label>
      <ul class="body-list compact">
        <li>単語ベクトルに反映された職業に関するステレオタイプ傾向と、職業の性別比率の差の変化を比較する</li>
      </ul>
    </div>
  </div>

  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>03</span></div>
</div>


---

<div class="page">
  <div class="kicker">Word2Vecの社会科学における応用</div>
  <h2 class="claim wide">Word2Vecに基づく概念構造の解析 <a href="https://journals.sagepub.com/doi/full/10.1177/0003122419877135" target="_blank" rel="noopener noreferrer">(Kozlowski et al., 2019)</a></h2>
  <p class="support wide">Word2Vecを用いて、抽象的な概念を構成する意味的要素を抽出し、概念内部の構成と関係を分析</p>

  <div class="concept-focus">「社会階層」の構成要素、関係と変化に注目</div>


  <div class="metric-rail vertical wide">
    <div class="metric" v-click="2">
      <div class="value">01</div>
      <div class="metric-copy">
        <div class="label">社会階層の多次元性</div>
        <div class="metric-desc">
          <ul>
            <li>社会階層は、単一の指標によって捉えられるものではなく、所得、職業、教育達成、社会的地位などが相互に関連する複雑かつ多次元的な概念</li>
          </ul>
        </div>
      </div>
    </div>
    <div class="metric" v-click="3">
      <div class="value">02</div>
      <div class="metric-copy">
        <div class="label">社会階層の概念変化</div>
        <div class="metric-desc inline-desc">社会階層概念は、社会経済構造の変化に伴い、その捉え方が変容してきた</div>
      </div>
    </div>
  </div>


  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>03</span></div>
</div>


---

<div class="page">
  <div class="kicker">Word2Vecの社会科学における応用</div>
  <h2 class="claim wide">Word2Vecに基づく概念構造の解析 <a href="https://journals.sagepub.com/doi/full/10.1177/0003122419877135" target="_blank" rel="noopener noreferrer">(Kozlowski et al., 2019)</a></h2>
  <p class="support wide">Word2Vecを用いて、抽象的な概念を構成する意味的要素を抽出し、概念内部の構成と関係を分析</p>

  <div class="content-split compact-split">
    <ul class="body-list wide">
      <li v-click="1"><b>次元の構築</b>: 反対の意味をもつ語のペア集合について、単語ベクトル差の平均を計算する
        <ul>
          <li>「富裕」次元を構築する例: <span class="math-var">rich - poor</span>、<span class="math-var">priceless - worthless</span> などの語ペアのベクトル差を平均する</li>
        </ul>
      </li>
      <li v-click="2"><b>構成要素次元への語の投影</b>: 他の語のベクトルと次元ベクトルの余弦類似度を計算し、その語が<span v-mark.red="3">特定の構成要素次元とどの程度関連しているか</span>を測定する
        <ul>
          <li>ある語のベクトルと構成要素的次元ベクトルの余弦類似度が高いほど、両者の関係がより強いことを示す</li>
        </ul>
      </li>
    </ul>
    <div class="plain-figure zoomable-figure" v-click="3">
      <input id="kozlowski-zoom" class="zoom-check" type="checkbox" />
      <label for="kozlowski-zoom" class="zoom-label">
        <img src="./image/Kozlowski-1.jpg" alt="Kozlowski et al. cultural dimension illustration" />
      </label>
    </div>
  </div>


  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>03</span></div>
</div>


---

<div class="page">
  <div class="kicker">Word2Vecの社会科学における応用</div>
  <h2 class="claim wide">Word2Vecに基づく概念構造の解析 <a href="https://journals.sagepub.com/doi/full/10.1177/0003122419877135" target="_blank" rel="noopener noreferrer">(Kozlowski et al., 2019)</a></h2>
  <p class="support wide">異なる時代のコーパスを用いて学習したモデルの計算結果を比較し、構成要素次元の関係変化を解析</p>

  <div class="content-split compact-split equal-split">
    <ul class="body-list wide">
      <li v-click="1">異なる時期のコーパスで学習した単語ベクトルモデルとベクトル演算に基づき、次元間の関係がどのように変化してきたかを理解する
        <ul>
          <li><em>「富裕」次元は、20世紀初頭には「文化的教養」や「地位」の次元とより強く結びついていた</em></li>
          <li><em>「富裕」次元と「教育」次元との関連は、次第に強まっている</em></li>
        </ul>
      </li>
    </ul>
    <div class="plain-figure zoomable-figure" v-click="4">
      <input id="kozlowski-zoom-2" class="zoom-check" type="checkbox" />
      <label for="kozlowski-zoom-2" class="zoom-label">
        <img src="./image/Kozlowski-2.jpg" alt="Kozlowski et al. changing relations among cultural dimensions" />
      </label>
    </div>
  </div>


  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>03</span></div>
</div>


---

<div class="page">
  <div class="kicker">ウェルビーイングの解析</div>
  <h2 class="claim wide">Word2Vecによるウェルビーイングの解析</h2>
  <p class="support wide"><a href="https://journals.sagepub.com/doi/full/10.1177/0003122419877135" target="_blank" rel="noopener noreferrer">Kozlowski et al (2019)</a>の手法を、ウェルビーイングの構成要素、関係と変化の解析に応用</p>


  <div class="metric-rail vertical wide">
    <div class="metric" v-click="2">
      <div class="value">問題関心</div>
      <div class="metric-copy">
        <div class="label">ウェルビーイングの多次元性</div>
        <div class="metric-desc">
          <ul>
            <li>「ウェルビーイング」はどのような要素によって構成されるのか</li>
          </ul>
        </div>
        <div class="label">時代・社会的背景に伴うウェルビーイングの変化</div>
        <div class="metric-desc">
          <ul>
            <li>異なる時代・社会的背景において、人々のウェルビーイングに対する認知がどのように変化するのか</li>
          </ul>
        </div>
      </div>
    </div>
    <div class="metric" v-click="3">
      <div class="value">データと方法</div>
      <div class="metric-copy">
        <div class="label">日本語の大規模コーパスを用いたWord2Vecモデルの学習と応用</div>
        <div class="metric-desc">
          <ul>
            <li><a href="https://lab.ndl.go.jp/ngramviewer/" target="_blank" rel="noopener noreferrer">国立国会図書館</a>が提供する、1910年代〜1990年代に出版された雑誌・書籍・官報を含むコーパスを使用</li>
            <li>年ごとに分割し、各時間帯に対応する単語ベクトルモデルを訓練する</li>
          </ul>
        </div>
      </div>
    </div>
  </div>


  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>03</span></div>
</div>


---

<div class="page">
  <div class="kicker">ウェルビーイングの解析</div>
  <h2 class="claim wide">Word2Vecによるウェルビーイングの解析</h2>

  <div class="flow">
    <div class="flow-step" v-click="1">
      <div class="num">01</div>
      <div class="name">Word2Vecの学習</div>
      <div class="desc">年ごとに分割し、各時間帯に対応する単語ベクトルモデルを訓練する</div>
      <div class="desc">各年の単語ベクトルは、該当する時代の単語の意味をうまく表現できることが期待される</div>
    </div>
    <div class="arrow" v-click="2">→</div>
    <div class="flow-step" v-click="2">
      <div class="num">02</div>
      <div class="name">意味軸の構築</div>
      <div class="desc">対義語のペアを用意し、ペア単語ベクトルの計算で埋め込み空間における意味軸を特定する</div>
      <div class="desc">例えば、V(富)-V(貧困)という単語ベクトルの計算で「裕福」の意味軸を特定する</div>
      <div class="desc">各意味軸は複数のペア単語を用いた平均の結果を採用する</div>
    </div>
    <div class="arrow" v-click="3">→</div>
    <div class="flow-step" v-click="3">
      <div class="num">03</div>
      <div class="name">意味軸の計算による構造と関係への理解</div>
      <div class="desc">意味軸同士のベクトル類似性が高いほど、該当する要素間での関連が強いと言える</div>
      <div class="desc">「幸福」軸と他の構成要素の軸との関係および変化に着目</div>
    </div>
  </div>
  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>05</span></div>
</div>


---

<div class="page">
  <div class="kicker">ウェルビーイングの解析</div>
  <h2 class="claim wide">日本におけるウェルビーイングの構成と変化</h2>
  <p class="support wide">異なる年のWord2Vecモデルを用いて意味軸間の計算を行い、その結果を年ごとに集計する</p>
  <div class="content-split compact-split equal-split">
    <ul class="body-list wide">
      <li v-click="1">ウェルビーイングに関連する要素の特定
        <ul>
          <li><em>物質・身体的ウェルビーイング：「Affluence」「Health」「Play」</em></li>
          <li><em>社会的ウェルビーイング：「Affiliation」</em></li>
          <li><em>制度的ウェルビーイング：「Peace」「Democracy」</em></li>
        </ul>
      </li>
      <li v-click="2">ウェルビーイングに関連する各要素の変化
        <ul>
          <li><em>長年にわたって安定している構成要素：「Health」</em></li>
          <li><em>時代とともに変化した構成要素：「Play」「Democracy」</em></li>
        </ul>
      </li>
    </ul>
    <div class="plain-figure zoomable-figure" v-click="1">
      <input id="similarity-dynamics-zoom" class="zoom-check" type="checkbox" />
      <label for="similarity-dynamics-zoom" class="zoom-label">
        <img src="./image/similarity_dynamics_jp.png" alt="Kozlowski et al. changing relations among cultural dimensions" />
      </label>
    </div>
  </div>


  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>03</span></div>
</div>


---

<div class="page">
  <div class="kicker">ウェルビーイングの解析</div>
  <h2 class="claim wide">日本におけるウェルビーイングの構成と変化</h2>
  <p class="support wide">戦後の変化傾向に注目</p>
  <div class="content-split compact-split equal-split">
    <ul class="body-list wide">
      <li v-click="1">「Play」とウェルビーイングの関連が強まった
        <ul>
          <li><em>余暇・娯楽・趣味・スポーツ・旅行などが、単なる休息ではなく、生活の質や自己実現を支える重要な要素として認識される</em></li>
        </ul>
      </li>
      <li v-click="2">「Education」とウェルビーイングの関連が弱まった
        <ul>
          <li><em>教育は、社会移動や安定した職業への主要な経路であり、幸福や豊かな生活とも強く結びついていたが、教育拡大と高学歴化が進むにつれて、教育はかつてのように社会移動や幸福達成をもたらす明確な手段としての影響力を弱めていった</em></li>
        </ul>
      </li>
    </ul>
    <div class="plain-figure zoomable-figure" v-click="1">
      <input id="similarity-dynamics-zoom" class="zoom-check" type="checkbox" />
      <label for="similarity-dynamics-zoom" class="zoom-label">
        <img src="./image/similarity_dynamics_revised.png" alt="Kozlowski et al. changing relations among cultural dimensions" />
      </label>
    </div>
  </div>


  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>03</span></div>
</div>


---

<div class="page">
  <div class="kicker">まとめ</div>
  <h2 class="claim wide">計算的手法によるウェルビーイングの解析方法を解説した</h2>

  <div class="metric-rail vertical">
    <div class="metric">
      <div class="value">示唆</div>
      <div class="label">従来の手法では考察することが難しい構造関係や時代的変化について、新たな知見を提供した</div>
    </div>
    <div class="metric">
      <div class="value">方法の拡張性</div>
      <div class="label">複雑な概念を理解するための手法として、多様な分野の研究テーマに応用することが可能である</div>
    </div>
  </div>
  <div class="footer"><span>人文社会科学特別科目「計算的手法によりウェルビーイングを測る」</span><span>08</span></div>
</div>

