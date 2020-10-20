from Acspy.Clients.SimpleClient import PySimpleClient

client = PySimpleClient()


def test_component_and_interface():
    comp = client.getDynamicComponent(
        'comp',
        "IDL:cta/example/ExampleComponent:1.0",
        None,
        "aragornContainer")

    # see if comp has value propoerty
    comp.value

    # test if comp has a set() method
    comp.set(123)
