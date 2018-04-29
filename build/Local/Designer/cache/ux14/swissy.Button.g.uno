namespace swissy
{
    [Uno.Compiler.UxGenerated]
    public partial class Button: Fuse.Controls.Panel
    {
        float4 _field_changeColor;
        [global::Uno.UX.UXOriginSetter("SetchangeColor")]
        public float4 changeColor
        {
            get { return _field_changeColor; }
            set { SetchangeColor(value, null); }
        }
        public void SetchangeColor(float4 value, global::Uno.UX.IPropertyListener origin)
        {
            if (value != _field_changeColor)
            {
                _field_changeColor = value;
                OnPropertyChanged("changeColor", origin);
            }
        }
        string _field_Text;
        [global::Uno.UX.UXOriginSetter("SetText")]
        public string Text
        {
            get { return _field_Text; }
            set { SetText(value, null); }
        }
        public void SetText(string value, global::Uno.UX.IPropertyListener origin)
        {
            if (value != _field_Text)
            {
                _field_Text = value;
                OnPropertyChanged("Text", origin);
            }
        }
        global::Uno.UX.Property<float4> temp_Color_inst;
        global::Uno.UX.Property<string> temp1_Value_inst;
        static Button()
        {
        }
        [global::Uno.UX.UXConstructor]
        public Button()
        {
            InitializeUX();
        }
        void InitializeUX()
        {
            var temp2 = new global::Fuse.Reactive.Constant(this);
            var temp = new global::Fuse.Controls.Rectangle();
            temp_Color_inst = new swissy_FuseControlsShape_Color_Property(temp, __selector0);
            var temp3 = new global::Fuse.Reactive.Property(temp2, swissy_accessor_swissy_Button_changeColor.Singleton);
            var temp4 = new global::Fuse.Reactive.Constant(this);
            var temp1 = new global::Fuse.Controls.Text();
            temp1_Value_inst = new swissy_FuseControlsTextControl_Value_Property(temp1, __selector1);
            var temp5 = new global::Fuse.Reactive.Property(temp4, swissy_accessor_swissy_Button_Text.Singleton);
            var temp6 = new global::Fuse.Reactive.DataBinding(temp_Color_inst, temp3, Fuse.Reactive.BindingMode.Default);
            var temp7 = new global::Fuse.Reactive.DataBinding(temp1_Value_inst, temp5, Fuse.Reactive.BindingMode.Default);
            var temp8 = new global::Fuse.Effects.DropShadow();
            var temp9 = new global::Fuse.Gestures.WhilePressed();
            var temp10 = new global::Fuse.Animations.Scale();
            this.changeColor = float4(0.1568628f, 0.4784314f, 0.8784314f, 1f);
            this.Margin = float4(5f, 10f, 5f, 10f);
            this.Padding = float4(0f, 10f, 0f, 10f);
            temp.CornerRadius = float4(4f, 4f, 4f, 4f);
            temp.Layer = Fuse.Layer.Background;
            temp.Bindings.Add(temp6);
            temp1.TextAlignment = Fuse.Controls.TextAlignment.Center;
            temp1.Color = float4(1f, 1f, 1f, 1f);
            temp1.Bindings.Add(temp7);
            temp8.Size = 2f;
            temp8.Angle = 90f;
            temp8.Distance = 1f;
            temp8.Spread = 0.2f;
            temp8.Color = float4(0f, 0f, 0f, 0.3764706f);
            temp9.Animators.Add(temp10);
            temp10.Factor = 0.95f;
            temp10.Duration = 0.08;
            this.Children.Add(temp);
            this.Children.Add(temp1);
            this.Children.Add(temp8);
            this.Children.Add(temp9);
        }
        static global::Uno.UX.Selector __selector0 = "Color";
        static global::Uno.UX.Selector __selector1 = "Value";
    }
}
