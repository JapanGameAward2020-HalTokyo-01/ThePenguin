// GENERATED AUTOMATICALLY FROM 'Assets/Prefabs/CharacterPrefabs/GameInput.inputactions'

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.InputSystem;
using UnityEngine.InputSystem.Utilities;

public class @GameInput : IInputActionCollection, IDisposable
{
    public InputActionAsset asset { get; }
    public @GameInput()
    {
        asset = InputActionAsset.FromJson(@"{
    ""name"": ""GameInput"",
    ""maps"": [
        {
            ""name"": ""Input"",
            ""id"": ""6237b85b-af3e-4385-87c5-e181948da3e9"",
            ""actions"": [
                {
                    ""name"": ""Rotate L"",
                    ""type"": ""Button"",
                    ""id"": ""30f637f6-196f-467b-9b42-0cbb54c9359a"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""Rotate R"",
                    ""type"": ""Button"",
                    ""id"": ""84247b68-046c-43b4-a667-39a3e009308e"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""A Button"",
                    ""type"": ""Button"",
                    ""id"": ""9508f3f0-c05c-448a-b6a2-f9779fbbe985"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""B Button"",
                    ""type"": ""Button"",
                    ""id"": ""5997f059-0f0d-4602-8da3-885e32644d5e"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""Pause"",
                    ""type"": ""Value"",
                    ""id"": ""f6de082c-00cf-494d-be21-0d701d83df1f"",
                    ""expectedControlType"": """",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""Move"",
                    ""type"": ""PassThrough"",
                    ""id"": ""1de00fac-6260-47f9-9007-4aae403507e0"",
                    ""expectedControlType"": ""Vector2"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""Select"",
                    ""type"": ""PassThrough"",
                    ""id"": ""884f723f-07dd-4d69-97bf-1e3306283f97"",
                    ""expectedControlType"": ""Vector2"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""Skip"",
                    ""type"": ""Button"",
                    ""id"": ""b4248710-5671-460f-9805-263748abd019"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                }
            ],
            ""bindings"": [
                {
                    ""name"": """",
                    ""id"": ""86ab612e-1174-424b-a22c-9a54f1949dfb"",
                    ""path"": ""<Gamepad>/leftShoulder"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Rotate L"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""ddfd379a-e3bf-489d-829b-5d117c55d3ae"",
                    ""path"": ""<Keyboard>/q"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Rotate L"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""d0c00306-48e0-4f5d-b43e-5179cecbf85f"",
                    ""path"": ""<Gamepad>/rightShoulder"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Rotate R"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""0c0666c7-75cc-4d12-a8e9-06722848319a"",
                    ""path"": ""<Keyboard>/e"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Rotate R"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""8ee1a0d3-edce-4a76-be1a-50b659027a6c"",
                    ""path"": ""<Gamepad>/buttonSouth"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""A Button"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""1d74efa5-e3c0-4c44-86d3-a3aa45ed7005"",
                    ""path"": ""<Keyboard>/enter"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""A Button"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""c1c093fb-7deb-4612-8f0e-d22b8b63d03e"",
                    ""path"": ""<Gamepad>/buttonEast"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""B Button"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""32f97cef-aef9-4fd1-a642-759e0cce197a"",
                    ""path"": ""<Keyboard>/escape"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""B Button"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""3fc6c05e-1190-4cdf-9f3b-1c0d32709db0"",
                    ""path"": ""<Gamepad>/start"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Pause"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""0e4f7e74-ad0d-494e-9163-d9c8c806acfc"",
                    ""path"": ""<Keyboard>/p"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Pause"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""d5225477-eca1-4894-ac91-177c92337c7a"",
                    ""path"": ""<Gamepad>/leftStick"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Move"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""4b171cda-1821-44eb-9df2-823a1244f671"",
                    ""path"": ""<Gamepad>/dpad"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Select"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""3e91c77f-31bc-45de-9710-3376d6d01b6f"",
                    ""path"": ""<Gamepad>/leftStick"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Select"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""WASD"",
                    ""id"": ""031cf3ca-045d-4340-a5bf-ca72809677f0"",
                    ""path"": ""2DVector"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Select"",
                    ""isComposite"": true,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""up"",
                    ""id"": ""741996a2-0a17-4181-b4a6-ca967851dcd9"",
                    ""path"": ""<Keyboard>/w"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Select"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""down"",
                    ""id"": ""4f42a13b-4a9b-4218-a7e7-84297b5d48bb"",
                    ""path"": ""<Keyboard>/s"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Select"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""left"",
                    ""id"": ""43ba3876-26f1-441b-895a-536bdd466269"",
                    ""path"": ""<Keyboard>/a"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Select"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""right"",
                    ""id"": ""da83d15d-03d1-4cb5-8221-065be9dcc2af"",
                    ""path"": ""<Keyboard>/d"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Select"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""Arrow"",
                    ""id"": ""7b841b23-2e16-4a33-b070-5a73b158b458"",
                    ""path"": ""2DVector"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Select"",
                    ""isComposite"": true,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""up"",
                    ""id"": ""d91c162d-b3e4-44a7-830a-4cf42488a4ec"",
                    ""path"": ""<Keyboard>/upArrow"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Select"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""down"",
                    ""id"": ""733573fa-4bd5-4949-8bfc-1e08747ac2bd"",
                    ""path"": ""<Keyboard>/downArrow"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Select"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""left"",
                    ""id"": ""7dcdab53-b03b-4c99-869d-095b7a9234dc"",
                    ""path"": ""<Keyboard>/leftArrow"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Select"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""right"",
                    ""id"": ""7a9d90e5-9d03-42e1-828f-4a3eac25f182"",
                    ""path"": ""<Keyboard>/rightArrow"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Select"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": """",
                    ""id"": ""70214e5f-80cb-4abf-8dad-6914d0ee4c79"",
                    ""path"": ""<Keyboard>/enter"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Skip"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                }
            ]
        }
    ],
    ""controlSchemes"": []
}");
        // Input
        m_Input = asset.FindActionMap("Input", throwIfNotFound: true);
        m_Input_RotateL = m_Input.FindAction("Rotate L", throwIfNotFound: true);
        m_Input_RotateR = m_Input.FindAction("Rotate R", throwIfNotFound: true);
        m_Input_AButton = m_Input.FindAction("A Button", throwIfNotFound: true);
        m_Input_BButton = m_Input.FindAction("B Button", throwIfNotFound: true);
        m_Input_Pause = m_Input.FindAction("Pause", throwIfNotFound: true);
        m_Input_Move = m_Input.FindAction("Move", throwIfNotFound: true);
        m_Input_Select = m_Input.FindAction("Select", throwIfNotFound: true);
        m_Input_Skip = m_Input.FindAction("Skip", throwIfNotFound: true);
    }

    public void Dispose()
    {
        UnityEngine.Object.Destroy(asset);
    }

    public InputBinding? bindingMask
    {
        get => asset.bindingMask;
        set => asset.bindingMask = value;
    }

    public ReadOnlyArray<InputDevice>? devices
    {
        get => asset.devices;
        set => asset.devices = value;
    }

    public ReadOnlyArray<InputControlScheme> controlSchemes => asset.controlSchemes;

    public bool Contains(InputAction action)
    {
        return asset.Contains(action);
    }

    public IEnumerator<InputAction> GetEnumerator()
    {
        return asset.GetEnumerator();
    }

    IEnumerator IEnumerable.GetEnumerator()
    {
        return GetEnumerator();
    }

    public void Enable()
    {
        asset.Enable();
    }

    public void Disable()
    {
        asset.Disable();
    }

    // Input
    private readonly InputActionMap m_Input;
    private IInputActions m_InputActionsCallbackInterface;
    private readonly InputAction m_Input_RotateL;
    private readonly InputAction m_Input_RotateR;
    private readonly InputAction m_Input_AButton;
    private readonly InputAction m_Input_BButton;
    private readonly InputAction m_Input_Pause;
    private readonly InputAction m_Input_Move;
    private readonly InputAction m_Input_Select;
    private readonly InputAction m_Input_Skip;
    public struct InputActions
    {
        private @GameInput m_Wrapper;
        public InputActions(@GameInput wrapper) { m_Wrapper = wrapper; }
        public InputAction @RotateL => m_Wrapper.m_Input_RotateL;
        public InputAction @RotateR => m_Wrapper.m_Input_RotateR;
        public InputAction @AButton => m_Wrapper.m_Input_AButton;
        public InputAction @BButton => m_Wrapper.m_Input_BButton;
        public InputAction @Pause => m_Wrapper.m_Input_Pause;
        public InputAction @Move => m_Wrapper.m_Input_Move;
        public InputAction @Select => m_Wrapper.m_Input_Select;
        public InputAction @Skip => m_Wrapper.m_Input_Skip;
        public InputActionMap Get() { return m_Wrapper.m_Input; }
        public void Enable() { Get().Enable(); }
        public void Disable() { Get().Disable(); }
        public bool enabled => Get().enabled;
        public static implicit operator InputActionMap(InputActions set) { return set.Get(); }
        public void SetCallbacks(IInputActions instance)
        {
            if (m_Wrapper.m_InputActionsCallbackInterface != null)
            {
                @RotateL.started -= m_Wrapper.m_InputActionsCallbackInterface.OnRotateL;
                @RotateL.performed -= m_Wrapper.m_InputActionsCallbackInterface.OnRotateL;
                @RotateL.canceled -= m_Wrapper.m_InputActionsCallbackInterface.OnRotateL;
                @RotateR.started -= m_Wrapper.m_InputActionsCallbackInterface.OnRotateR;
                @RotateR.performed -= m_Wrapper.m_InputActionsCallbackInterface.OnRotateR;
                @RotateR.canceled -= m_Wrapper.m_InputActionsCallbackInterface.OnRotateR;
                @AButton.started -= m_Wrapper.m_InputActionsCallbackInterface.OnAButton;
                @AButton.performed -= m_Wrapper.m_InputActionsCallbackInterface.OnAButton;
                @AButton.canceled -= m_Wrapper.m_InputActionsCallbackInterface.OnAButton;
                @BButton.started -= m_Wrapper.m_InputActionsCallbackInterface.OnBButton;
                @BButton.performed -= m_Wrapper.m_InputActionsCallbackInterface.OnBButton;
                @BButton.canceled -= m_Wrapper.m_InputActionsCallbackInterface.OnBButton;
                @Pause.started -= m_Wrapper.m_InputActionsCallbackInterface.OnPause;
                @Pause.performed -= m_Wrapper.m_InputActionsCallbackInterface.OnPause;
                @Pause.canceled -= m_Wrapper.m_InputActionsCallbackInterface.OnPause;
                @Move.started -= m_Wrapper.m_InputActionsCallbackInterface.OnMove;
                @Move.performed -= m_Wrapper.m_InputActionsCallbackInterface.OnMove;
                @Move.canceled -= m_Wrapper.m_InputActionsCallbackInterface.OnMove;
                @Select.started -= m_Wrapper.m_InputActionsCallbackInterface.OnSelect;
                @Select.performed -= m_Wrapper.m_InputActionsCallbackInterface.OnSelect;
                @Select.canceled -= m_Wrapper.m_InputActionsCallbackInterface.OnSelect;
                @Skip.started -= m_Wrapper.m_InputActionsCallbackInterface.OnSkip;
                @Skip.performed -= m_Wrapper.m_InputActionsCallbackInterface.OnSkip;
                @Skip.canceled -= m_Wrapper.m_InputActionsCallbackInterface.OnSkip;
            }
            m_Wrapper.m_InputActionsCallbackInterface = instance;
            if (instance != null)
            {
                @RotateL.started += instance.OnRotateL;
                @RotateL.performed += instance.OnRotateL;
                @RotateL.canceled += instance.OnRotateL;
                @RotateR.started += instance.OnRotateR;
                @RotateR.performed += instance.OnRotateR;
                @RotateR.canceled += instance.OnRotateR;
                @AButton.started += instance.OnAButton;
                @AButton.performed += instance.OnAButton;
                @AButton.canceled += instance.OnAButton;
                @BButton.started += instance.OnBButton;
                @BButton.performed += instance.OnBButton;
                @BButton.canceled += instance.OnBButton;
                @Pause.started += instance.OnPause;
                @Pause.performed += instance.OnPause;
                @Pause.canceled += instance.OnPause;
                @Move.started += instance.OnMove;
                @Move.performed += instance.OnMove;
                @Move.canceled += instance.OnMove;
                @Select.started += instance.OnSelect;
                @Select.performed += instance.OnSelect;
                @Select.canceled += instance.OnSelect;
                @Skip.started += instance.OnSkip;
                @Skip.performed += instance.OnSkip;
                @Skip.canceled += instance.OnSkip;
            }
        }
    }
    public InputActions @Input => new InputActions(this);
    public interface IInputActions
    {
        void OnRotateL(InputAction.CallbackContext context);
        void OnRotateR(InputAction.CallbackContext context);
        void OnAButton(InputAction.CallbackContext context);
        void OnBButton(InputAction.CallbackContext context);
        void OnPause(InputAction.CallbackContext context);
        void OnMove(InputAction.CallbackContext context);
        void OnSelect(InputAction.CallbackContext context);
        void OnSkip(InputAction.CallbackContext context);
    }
}
