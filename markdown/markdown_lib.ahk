backtickBracket()
{
  sleep,10
  temp := clipboard
  clipboard := "``````"
  send ^v
  sleep,10
  clipboard := temp
  sleep,10
}

tagWord()
{
  backtickBracket()
  Send {SPACE}w
  send ^{LEFT 2}
  backtickBracket()
  Send w{BACKSPACE}
  send ^{RIGHT}{DELETE}
}
