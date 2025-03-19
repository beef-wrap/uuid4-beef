using System;
using System.Collections;
using System.Diagnostics;
using System.IO;
using System.Interop;
using System.Text;

using static uuid4.uuid4;

namespace example;

static class Program
{
	static int Main(params String[] args)
	{
		let uuid = uuid4_init();

		c_char[UUID4_LEN] buf;
		uuid4_generate(&buf);

		Debug.WriteLine($"uuid: {StringView(&buf)}");

		return 0;
	}
}