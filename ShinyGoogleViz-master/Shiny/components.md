%------------------------------------------------------------------------------%
panels

-sidePanel
-headerPanel
-mainPanel

%------------------------------------------------------------------------------%
-sliderInput

# Simple integer interval
    sliderInput("integer", "Integer:", 
                min=0, max=1000, value=500),

    # Decimal interval with step value
    sliderInput("decimal", "Decimal:", 
                min = 0, max = 1, value = 0.5, step= 0.1),

    # Specification of range within an interval
    sliderInput("range", "Range:",
                min = 1, max = 1000, value = c(200,500)),

    # Provide a custom currency format for value display, with basic animation
    sliderInput("format", "Custom Format:", 
                min = 0, max = 10000, value = 0, step = 2500,
                format="$#,##0", locale="us", animate=TRUE),

    # Animation with custom interval (in ms) to control speed, plus looping
    sliderInput("animation", "Looping Animation:", 1, 2000, 1, step = 10, 
                animate=animationOptions(interval=300, loop=T))
%------------------------------------------------------------------------------%
radioButtons
checkboxInput

% Animation Options
% Checkbox Inputs
%


\section{Animation Options}
%-------------------------%
animationOptions creates an options object for customizing animations for sliderInput.

\textbf{Usage with default settings}\\
\texttt{animationOptions(interval = 1000, loop = FALSE,
playButton = NULL, pauseButton = NULL)}
%-------------------------%
\textbf{Arguments}

\begin{description}
\item[interval] The interval, in milliseconds, between each animation step.
\item[loop] TRUE to automatically restart the animation when it reaches the end.
\item[playButton] Specifies the appearance of the play button. Valid values are a one-element
character vector (for a simple text label), an HTML tag or list of tags (using tag
and friends), or raw HTML (using HTML).
\item[pauseButton] Similar to playButton, but for the pause button.
\end{description}
%---------------------------------------------------------%
%---------------------------------------------------------%


\section{Checkbox Input Control}

checkboxInput Create a checkbox that can be used to specify logical values.
\textbf{Usage with default settings}\\
\texttt{checkboxInput(inputId, label, value = FALSE)}

%-------------------------%
\textbf{Arguments}

\begin{description}
\item[inputId] Input variable to assign the control’s value to.
\item[label] Display label for the control.
\item[value] Initial value (TRUE or FALSE).
\end{description}

\textbf{Value}\\
A checkbox control that can be added to a UI definition.
\textbf{Examples}\\

\texttt{checkboxInput("outliers", "Show outliers", FALSE)}
