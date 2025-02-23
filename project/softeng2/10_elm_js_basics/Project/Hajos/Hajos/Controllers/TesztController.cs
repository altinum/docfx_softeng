using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Hajos.Controllers
{
    //[Route("api/[controller]")]
    //[ApiController]
    public class TesztController : ControllerBase
    {
        [HttpGet]
        [Route("corvinus/szerverido")]
        public IActionResult M1()
        {
            string pontosIdő = DateTime.Now.ToShortTimeString();

            return Ok(pontosIdő);
        }


        [HttpGet]
        [Route("corvinus/nagybetus/{szoveg}")]
        public IActionResult M2(string szoveg)
        {
            return Ok(szoveg.ToUpper());
        }

    }
}
