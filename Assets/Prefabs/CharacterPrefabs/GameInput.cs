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
                    ""type"": ""Button"",
                    ""id"": ""f6de082c-00cf-494d-be21-0d701d83df1f"",
                    ""expectedControlType"": ""Button"",
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
                    ""id"": ""f355360f-b0d5-451a-be5d-1158735a29d9"",
                    ""path"": ""<Gamepad>/leftTrigger"",
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
                    ""id"": ""33c89f3b-9a7f-4ada-9314-f542b492f8af"",
                    ""path"": ""<Gamepad>/rightTrigger"",
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
                    ""path"": ""<Gamepad>/buttonEast"",
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
                    ""path"": ""<Gamepad>/buttonSouth"",
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
                    ""id"": ""d5225477-eca1-4894-ac91-177c92337c7a"",
                    ""path"": ""<Gamepad>/leftStick"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Move"",
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
    }
}
