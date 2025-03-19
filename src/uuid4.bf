using System;
using System.Interop;

namespace uuid4;

public static class uuid4
{
	public const c_char* UUID4_VERSION = "1.0.0";

	public const c_int UUID4_LEN = 37;

	public enum status
	{
		UUID4_ESUCCESS =  0,
		UUID4_EFAILURE = -1
	}

	[CLink] public static extern int uuid4_init();
	[CLink] public static extern void uuid4_generate(c_char* dst);
}