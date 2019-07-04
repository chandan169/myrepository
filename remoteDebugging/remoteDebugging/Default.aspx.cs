using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Threading;

namespace remoteDebugging
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonHandledCrash_Click(object sender, EventArgs e)
        {
            decimal percentage = 0, number = 1000, total = 0;

            try
            {
                percentage = number / total;
            }
            catch (DivideByZeroException divEx)
            {
                labelHandledCrash.Text = $"An Exception happened:  -> {divEx.Message.ToString()} ";
            }
        }

        protected void buttonUnHandledCrash_Click(object sender, EventArgs e)
        {
            decimal percentage = 0, number = 1000, total = 0;
            percentage = number / total;
            labelUnHandledCrash.Text = percentage.ToString();
        }

        protected void buttonSlow_Click(object sender, EventArgs e)
        {
            DateTime start, stop;

            CallSlowExternalAPI(5000, out start, out stop);

            labelSlowStart.Text = start.ToString();
            labelSlowStop.Text = stop.ToString();
        }

        private void CallSlowExternalAPI(int time, out DateTime started, out DateTime stopped)
        {
            started = DateTime.Now;
            Thread.Sleep(time);
            stopped = DateTime.Now;
        }
    }
}