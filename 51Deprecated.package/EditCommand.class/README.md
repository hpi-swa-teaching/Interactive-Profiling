This class handles all paragraph surgery in VI. In general, subclasses of EditCommand should be able to rely on the super class' undo/redo machinery -- only the repeat command needs to be overridden in most cases. This assumes, of course, that the newText, replacedText, newTextInterval, and replacedTextInterval have been set correctly.

When setting the interval, use normal mode style selections, not insert mode selections (see class comment of VIMorphEditor).

Possible useful expressions for doIt or printIt.

Structure:
 instVar1		type -- comment about the purpose of instVar1
 instVar2		type -- comment about the purpose of instVar2

Any further useful comments about the general approach of this implementation.