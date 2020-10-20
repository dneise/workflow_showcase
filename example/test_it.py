from Acspy.Clients.SimpleClient import PySimpleClient

client = PySimpleClient()

print("yessss")

def test_component_creation():
    comp = client.getDynamicComponent(
        'comp',
        "IDL:cta/example/ExampleComponent:1.0",
        None,
        "aragornContainer")
