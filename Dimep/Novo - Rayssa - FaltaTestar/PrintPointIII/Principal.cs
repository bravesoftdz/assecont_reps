﻿using System;

namespace PrintPointIII
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

        private void Principal_Load(object sender, EventArgs e)
        {

        }
    }
}