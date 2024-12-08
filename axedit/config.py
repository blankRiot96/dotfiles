import axedit
from axedit.modules import EditorInterface, LineNumbers, StatusBar
from axedit.modules.stacks import HorizontalStack, VerticalStack, ZStack

modules = ZStack(
    VerticalStack([HorizontalStack([LineNumbers, EditorInterface]), StatusBar]),
    Terminal,
)
