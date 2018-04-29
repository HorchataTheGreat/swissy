namespace swissy
{
    [Uno.Compiler.UxGenerated]
    public partial class TitleBar: Fuse.Controls.Rectangle
    {
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
        global::Uno.UX.Property<string> temp_Value_inst;
        static TitleBar()
        {
        }
        [global::Uno.UX.UXConstructor]
        public TitleBar()
        {
            InitializeUX();
        }
        void InitializeUX()
        {
            var temp1 = new global::Fuse.Reactive.Constant(this);
            var temp = new global::Fuse.Controls.Text();
            temp_Value_inst = new swissy_FuseControlsTextControl_Value_Property(temp, __selector0);
            var temp2 = new global::Fuse.Reactive.Property(temp1, swissy_accessor_swissy_TitleBar_Text.Singleton);
            var temp3 = new global::Fuse.Reactive.DataBinding(temp_Value_inst, temp2, Fuse.Reactive.BindingMode.Default);
            var temp4 = new global::Fuse.Effects.DropShadow();
            this.Color = float4(0.08235294f, 0.08235294f, 0.08235294f, 1f);
            global::Fuse.Controls.DockPanel.SetDock(this, Fuse.Layouts.Dock.Top);
            temp.FontSize = 24f;
            temp.Color = float4(0.8666667f, 0.8666667f, 0.8666667f, 1f);
            temp.Alignment = Fuse.Elements.Alignment.TopCenter;
            temp.Margin = float4(10f, 10f, 10f, 10f);
            temp.Bindings.Add(temp3);
            temp4.Size = 2f;
            temp4.Angle = 90f;
            temp4.Distance = 1f;
            temp4.Spread = 0.2f;
            temp4.Color = float4(0f, 0f, 0f, 0.3764706f);
            this.Children.Add(temp);
            this.Children.Add(temp4);
        }
        static global::Uno.UX.Selector __selector0 = "Value";
    }
}
