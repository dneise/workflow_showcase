from Acspy.Servants.ACSComponent import ACSComponent
from Acspy.Servants.ComponentLifecycle import ComponentLifecycle
from Acspy.Servants.ContainerServices import ContainerServices
import example
import example__POA

class ExampleComponent(
    example__POA.ExampleComponent,
    ACSComponent,
    ContainerServices,
    ComponentLifecycle,
):
    def __init__(self, *args, **kw):
        ACSComponent.__init__(self)
        ContainerServices.__init__(self, *args, **kw)
        self._a_number = 0

    def set_a_number(self, a_number):
        self._a_number = a_number

    @property
    def a_number(self):
        return self._a_number
