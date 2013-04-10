using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hoteis.Controle.Exceptions
{
    public class Utils : IValidator
    {
        private Utils(string message)
        {
            ErrorMessage = message;
            IsValid = false;
        }

        public string ErrorMessage { get; set; }

        public bool IsValid { get; set; }

        public void Validate()
        {
            // no action required
        }

        public static void Display(string message)
        {
            Page currentPage = HttpContext.Current.Handler as Page;
            currentPage.Validators.Add(new Utils(message));
        }

        public static void Limpar(Control controlP)
        {
            foreach (Control ctl in controlP.Controls)
            {
                if (ctl is TextBox)
                {
                    ((TextBox)ctl).Text = String.Empty;
                }
                else if (ctl.Controls.Count > 0)
                {
                    Limpar(ctl);
                }
            }
        }
    }
}