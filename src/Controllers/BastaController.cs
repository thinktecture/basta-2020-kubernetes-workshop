using System;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace Thinktecture.AKS.Sample.Controllers
{
    [ApiController]
    [Route("basta")]
    public class BastaController : ControllerBase
    {
        public ILogger<BastaController> Logger { get; }
        public BastaController(ILogger<BastaController> logger)
        {
            Logger = logger;
        }

        [HttpGet]
        [Route("")]
        public IActionResult GetInfo()
        {
            Logger.LogInformation("GetInfo invoked");
            var response = new
            {
                HostName = Environment.MachineName,
                OperatingSystem = System.Runtime.InteropServices.RuntimeInformation.OSDescription,
                EnvironmentVariables = Environment.GetEnvironmentVariables()
            };
            return Ok(response);
        }
    }
}