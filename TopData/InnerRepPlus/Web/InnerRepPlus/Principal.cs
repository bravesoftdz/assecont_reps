﻿
namespace InnerRepPlus
{
    public partial class Principal : AssepontoRep.Principal
    {
        Bridge bridge;
        public Principal()
        {
            InitializeComponent();
            bridge = new Bridge(edLog);
            assignBridge(bridge);

        }
    }
}