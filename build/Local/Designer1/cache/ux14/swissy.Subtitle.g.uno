namespace swissy
{
    [Uno.Compiler.UxGenerated]
    public partial class Subtitle: Fuse.Controls.Text
    {
        string _field_textValue;
        [global::Uno.UX.UXOriginSetter("SettextValue")]
        public string textValue
        {
            get { return _field_textValue; }
            set { SettextValue(value, null); }
        }
        public void SettextValue(string value, global::Uno.UX.IPropertyListener origin)
        {
            if (value != _field_textValue)
            {
                _field_textValue = value;
                OnPropertyChanged("textValue", origin);
            }
        }
        global::Uno.UX.Property<string> this_Value_inst;
        static Subtitle()
        {
        }
        [global::Uno.UX.UXConstructor]
        public Subtitle()
        {
            InitializeUX();
        }
        void InitializeUX()
        {
            var temp = new global::Fuse.Reactive.Constant(this);
            this_Value_inst = new swissy_FuseControlsTextControl_Value_Property(this, __selector0);
            var temp1 = new global::Fuse.Reactive.Property(temp, swissy_accessor_swissy_Subtitle_textValue.Singleton);
            var temp2 = new global::Fuse.Reactive.DataBinding(this_Value_inst, temp1, Fuse.Reactive.BindingMode.Default);
            this.FontSize = 16f;
            this.Color = float4(0.8666667f, 0.8666667f, 0.8666667f, 1f);
            this.Alignment = Fuse.Elements.Alignment.VerticalCenter;
            this.Margin = float4(5f, 5f, 5f, 5f);
            this.Bindings.Add(temp2);
        }
        static global::Uno.UX.Selector __selector0 = "Value";
    }
}
