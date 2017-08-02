This is a stub class to replace the original implementation of a ParagraphEditor for TextMorphs, which has since been replaced by TextEditor. This implementation is retained for the benefit of external packages such as Connectors and FreeType that may have dependencies on TextMorphEditor.

The comment below is from the class comment of the original TextMorphEditor.
-----
In the past, BookMorphs had the ability to have each page be on the server as a .sp SqueakPage file.  The index of the book was a .bo file.  In text, Cmd-6 had a LinkTo option that linked to a page by its name, or created a new page of that name.  It assumed the book was on a server with a file per page.  Ted removed that code, and kept a copy on his disk in 'TME-ChngEmphasis.st for .bo .sp'