## Apéndice 4.A: Justificación de las reglas para operar con variables aleatorias {.unnumbered}

Si $a$ y $b$ son constantes y $X$ y $Y$ variables aleatorias, sin importar si son discretas o continuas ni cuál es su distribución de probabilidad, se verifica:
  
  <div style="line-height: 1;">
    -   [$\mathbf{E(a+bX) = a+b \cdot E(X)}$]{style="color: #0038CF;"}<br><br>
    Supongamos que $X$ es continua:
    $$
    \begin{split}
  \text{E}(a+bX) &= \int (a+bx) \cdot f(x) \mathrm{d}x = \\
  &= \int a \cdot f(x) \mathrm{d}x + \int bx \cdot f(x) \mathrm{d}x \hspace{12cm}\\
  &= a+b \int x \cdot f(x) \mathrm{d}x =\\
  &= a + b \cdot \text{E}(x)
  \end{split}
  $$
    Si $X$ es discreta basta con sustituir la integral por el sumatorio y $f(x)\mathrm{d}x$ por $p(x)$.
  </div>
    
    <div style="line-height: 1;">
      -   [$\mathbf{V(a+bX) = b^2 \cdot V(X)}$]{style="color: #0038CF;"}<br><br>
      Hemos visto que podemos definir: $\text{V}(X) = \text{E} \left[ X - \text{E}(X) \right]^2$, por tanto:
        $$
        \begin{split}
      \text{V}(X) &= \text{E}\left [ X^2 - 2X \cdot \text{E}(X) + \left [\text{E}(X) \right ]^2 \right ] = \\[2pt]
      &= \text{E}(X^2) - 2 \left [ \text{E}(X) \right ]^2 +  \left [\text{E}(X) \right ]^2  = \text{E}(X^2) - \left [ \text{E}(X) \right ]^2 \hspace{12cm} \\
      \end{split}
      $$
        $$
        \begin{split}
      \text{V}(a+bX) &= \text{E}[(a+bX)^2] - [\text{E}(a+bX)]^2 = \\[2pt]
      &= \text{E}(a^2+2abX+b^2X^2)-[a+b\text{E}(X)]^2 \\[2pt]
      &= a^2+2ab\text{E}(X)+b^2\text{E}(X^2)-a^2 - 2ab\text{E}(X)-b^2[\text{E}(X)]^2 = \hspace{12cm}\\
      &= b^2 {\text{E}(X^2)-b^2[\text{E}(X)]^2} =\\[2pt]
      &= b^2\text{V}(X)
      \end{split}
      $$
        </div>	
        \vspace{2mm}
      
      \normalsize{
        {\color{MyBlue}
          \item $\mathbf{V(a+bX) = b^2 \cdot V(X)}$}
      }
      
      \small{
        Hemos visto que podemos definir: $\text{V}(X) = \text{E} \left [ X - \text{E}(X) \right]^2 $, por tanto:	
          \begin{fleqn}[\parindent]
        \begin{equation*}
        \begin{split}
        \text{V}(X) &= \text{E}\left [ X^2 - 2X \cdot \text{E}(X) + \left [\text{E}(X) \right ]^2 \right ] = \\[2pt]
        &= \text{E}(X^2) - 2 \left [ \text{E}(X) \right ]^2 +  \left [\text{E}(X) \right ]^2  = \text{E}(X^2) - \left [ \text{E}(X) \right ]^2 \\[2pt]
        \end{split}	
        \end{equation*}	
        \end{fleqn}
        
        
        
        \begin{fleqn}[\parindent]
        \begin{equation*}
        \begin{split}
        \text{V}(a+bX) &= \text{E}[(a+bX)^2] - [\text{E}(a+bX)]^2 = \\[2pt]
        &= \text{E}(a^2+2abX+b^2X^2)-[a+b\text{E}(X)]^2 \\[2pt]
        &= a^2+2ab\text{E}(X)+b^2\text{E}(X^2)-a^2 - 2ab\text{E}(X)-b^2[\text{E}(X)]^2 =\\[2pt]
        &= b^2 {\text{E}(X^2)-b^2[\text{E}(X)]^2} =\\[2pt]
        &= b^2\text{V}(X)
        \end{split}	
        \end{equation*}	
        \end{fleqn}
      }	
      
      {\normalsize{
        \color{MyBlue}
        \item $\mathbf{E(X+Y) = E(X) + E(Y)}$}
      }
      \small {
        
        Supongamos que $X$ e $Y$ son discretas:
          
          \begin{fleqn}[\parindent]
        \begin{equation*}
        \begin{split}
        \text{E}(X+Y) &= \sum_i \sum_j (x_i + y_j) P(X = x_i, Y = y_j) \\[2pt]
        &= \sum_i \sum_j x_i P(X = x_i, Y = y_j) + \sum_i \sum_j y_i P(X = x_i, Y = y_j) \\[2pt]
        &= \sum_i  x_i P(X = x_i) + \sum_j y_j P(Y = y_j) \\[2pt]
        &= E(X) + E(Y)
        \end{split}	
        \end{equation*}	
        \end{fleqn}
        
        De entrada, puede parecer extraña la igualdad (análogamente para $y_i$):
          $$\sum_i \sum_j x_i P(X = x_i, Y = y_j) = \sum_i  x_i P(X = x_i)$$
          Para ver claro que esto es así podemos usar un ejemplo numérico como el siguiente, donde tenemos los valores que pueden tomar $X$ ($x_1$, $x_2$, $x_3$) y $Y$ ($y_1$, $y_2$, $y_3$), junto con sus probabilidades (debajo) y los valores correspondientes a la suma $X+Y$, también con sus probabilidades:
          \vspace{-2mm}
        