using System.Web;
using System.Web.Mvc;

namespace MVC_okul2_veritabani_projesi
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
