namespace swissy
{
    [Uno.Compiler.UxGenerated]
    public partial class ListItem: Fuse.Controls.Panel
    {
        string _field_playerNumber;
        [global::Uno.UX.UXOriginSetter("SetplayerNumber")]
        public string playerNumber
        {
            get { return _field_playerNumber; }
            set { SetplayerNumber(value, null); }
        }
        public void SetplayerNumber(string value, global::Uno.UX.IPropertyListener origin)
        {
            if (value != _field_playerNumber)
            {
                _field_playerNumber = value;
                OnPropertyChanged("playerNumber", origin);
            }
        }
        string _field_playerName;
        [global::Uno.UX.UXOriginSetter("SetplayerName")]
        public string playerName
        {
            get { return _field_playerName; }
            set { SetplayerName(value, null); }
        }
        public void SetplayerName(string value, global::Uno.UX.IPropertyListener origin)
        {
            if (value != _field_playerName)
            {
                _field_playerName = value;
                OnPropertyChanged("playerName", origin);
            }
        }
        string _field_playerDeckType;
        [global::Uno.UX.UXOriginSetter("SetplayerDeckType")]
        public string playerDeckType
        {
            get { return _field_playerDeckType; }
            set { SetplayerDeckType(value, null); }
        }
        public void SetplayerDeckType(string value, global::Uno.UX.IPropertyListener origin)
        {
            if (value != _field_playerDeckType)
            {
                _field_playerDeckType = value;
                OnPropertyChanged("playerDeckType", origin);
            }
        }
        global::Uno.UX.Property<string> temp_textValue_inst;
        global::Uno.UX.Property<string> temp1_textValue_inst;
        global::Uno.UX.Property<string> temp2_textValue_inst;
        static ListItem()
        {
        }
        [global::Uno.UX.UXConstructor]
        public ListItem()
        {
            InitializeUX();
        }
        void InitializeUX()
        {
            var temp3 = new global::Fuse.Reactive.Constant(this);
            var temp = new global::swissy.Subtitle();
            temp_textValue_inst = new swissy_swissySubtitle_textValue_Property(temp, __selector0);
            var temp4 = new global::Fuse.Reactive.Property(temp3, swissy_accessor_swissy_ListItem_playerNumber.Singleton);
            var temp5 = new global::Fuse.Reactive.Constant(this);
            var temp1 = new global::swissy.Subtitle();
            temp1_textValue_inst = new swissy_swissySubtitle_textValue_Property(temp1, __selector0);
            var temp6 = new global::Fuse.Reactive.Property(temp5, swissy_accessor_swissy_ListItem_playerName.Singleton);
            var temp7 = new global::Fuse.Reactive.Constant(this);
            var temp2 = new global::swissy.Subtitle();
            temp2_textValue_inst = new swissy_swissySubtitle_textValue_Property(temp2, __selector0);
            var temp8 = new global::Fuse.Reactive.Property(temp7, swissy_accessor_swissy_ListItem_playerDeckType.Singleton);
            var temp9 = new global::Fuse.Controls.Grid();
            var temp10 = new global::Fuse.Controls.Rectangle();
            var temp11 = new global::Fuse.Reactive.DataBinding(temp_textValue_inst, temp4, Fuse.Reactive.BindingMode.Default);
            var temp12 = new global::Fuse.Controls.Rectangle();
            var temp13 = new global::Fuse.Reactive.DataBinding(temp1_textValue_inst, temp6, Fuse.Reactive.BindingMode.Default);
            var temp14 = new global::Fuse.Controls.Rectangle();
            var temp15 = new global::Fuse.Reactive.DataBinding(temp2_textValue_inst, temp8, Fuse.Reactive.BindingMode.Default);
            var temp16 = new global::Fuse.Controls.Rectangle();
            var temp17 = new global::Fuse.Gestures.WhilePressed();
            var temp18 = new global::Fuse.Animations.Scale();
            this.playerNumber = "0";
            this.playerName = "Name";
            this.playerDeckType = "Deck Type";
            this.Alignment = Fuse.Elements.Alignment.VerticalCenter;
            this.Margin = float4(20f, 5f, 20f, 5f);
            temp9.Columns = "1*,4*,4*";
            temp9.Children.Add(temp10);
            temp9.Children.Add(temp12);
            temp9.Children.Add(temp14);
            temp10.Children.Add(temp);
            temp.Alignment = Fuse.Elements.Alignment.Left;
            temp.Bindings.Add(temp11);
            temp12.Children.Add(temp1);
            temp1.Bindings.Add(temp13);
            temp14.Children.Add(temp2);
            temp2.Bindings.Add(temp15);
            temp16.Color = float4(1f, 1f, 1f, 1f);
            temp16.Width = new Uno.UX.Size(100f, Uno.UX.Unit.Percent);
            temp16.Height = new Uno.UX.Size(1f, Uno.UX.Unit.Unspecified);
            temp16.Alignment = Fuse.Elements.Alignment.Bottom;
            temp17.Animators.Add(temp18);
            temp18.Factor = 0.95f;
            temp18.Duration = 0.08;
            this.Children.Add(temp9);
            this.Children.Add(temp16);
            this.Children.Add(temp17);
        }
        static global::Uno.UX.Selector __selector0 = "textValue";
    }
}
