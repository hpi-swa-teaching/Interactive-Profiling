class initialization
initialize   "HtmlFileStream initialize"
	TabThing := '&nbsp;&nbsp;&nbsp;'

"I took Ted's suggestion to use &nbsp, which works far better for the HTML.  Style sheets provide an alternative, possibly better, solution since they permit finer-grain control of the HTML formatting, and thus would permit capturing the style in which text was originally rendered.  Internal tabbings would still get lost. 1/1/99 acg."