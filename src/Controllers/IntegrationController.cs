
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Thinktecture.AKS.Sample.Controllers
{
    [ApiController]
    [AllowAnonymous]
    [Route("health")]
    public class IntegrationController : ControllerBase
    {
        [HttpGet]
        [Route("readiness")]
        public IActionResult IsReady()
        {
            return Ok();
        }

        [HttpGet]
        [Route("liveness")]
        public IActionResult IsAlive()
        {
            return Ok();
        }
    }
}