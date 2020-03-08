/*
    Network Next SDK 3.1.3

    Copyright © 2017 - 2019 Network Next, Inc.

    Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following 
    conditions are met:

    1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

    2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions 
       and the following disclaimer in the documentation and/or other materials provided with the distribution.

    3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote 
       products derived from this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, 
    INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. 
    IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; 
    OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING 
    NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

using System.IO;
using UnrealBuildTool;

public class NetworkNextLibrary : ModuleRules
{
	public NetworkNextLibrary(ReadOnlyTargetRules Target) : base(Target)
	{
		Type = ModuleType.External;
        
        if (Target.Platform == UnrealTargetPlatform.Win64)
        {
            PublicAdditionalLibraries.Add(Path.Combine(ModuleDirectory, "next", "lib", "Windows-x86_64", "Release", "next.lib"));
            RuntimeDependencies.Add("$(TargetOutputDir)/next.dll", Path.Combine(ModuleDirectory, "next", "lib", "Windows-x86_64", "Release", "next.dll"));

            // This makes the editor work, because RuntimeDependencies do not apply to builds of the editor.
            Directory.CreateDirectory(Path.Combine(PluginDirectory, "Binaries", "Win64"));
            try
            {
                File.Copy(
                    Path.Combine(ModuleDirectory, "next", "lib", "Windows-x86_64", "Release", "next.dll"),
                    Path.Combine(PluginDirectory, "Binaries", "Win64", "next.dll"),
                    true
                );
            }
            catch (System.IO.IOException)
            {
            }
        }
        else if (Target.Platform == UnrealTargetPlatform.Win32)
        {
            PublicAdditionalLibraries.Add(Path.Combine(ModuleDirectory, "next", "lib", "Windows-x86", "Release", "next.lib"));
            RuntimeDependencies.Add("$(TargetOutputDir)/next.dll", Path.Combine(ModuleDirectory, "next", "lib", "Windows-x86", "Release", "next.dll"));

            // This makes the editor work, because RuntimeDependencies do not apply to builds of the editor.
            Directory.CreateDirectory(Path.Combine(PluginDirectory, "Binaries", "Win32"));
            try
            {
                File.Copy(
                    Path.Combine(ModuleDirectory, "next", "lib", "Windows-x86", "Release", "next.dll"),
                    Path.Combine(PluginDirectory, "Binaries", "Win32", "next.dll"),
                    true
                );
            }
            catch (System.IO.IOException)
            {
            }
        }
        else if (Target.Platform == UnrealTargetPlatform.Linux)
        {
            PublicAdditionalLibraries.Add(Path.Combine(ModuleDirectory, "next", "lib", "Linux-x86_64", "Release", "libnext-Shared64-Release.so"));
            RuntimeDependencies.Add("$(TargetOutputDir)/libnext-Shared64-Release.so", Path.Combine(ModuleDirectory, "next", "lib", "Linux-x86_64", "Release", "libnext-Shared64-Release.so"));
        }

        /*
         * 
        if (Target.Platform == UnrealTargetPlatform.Win32)
        {
            PublicLibraryPaths.Add(Path.Combine(ModuleDirectory, "next", "lib", "Windows-x86", "Release"));
            PublicAdditionalLibraries.Add("next.lib");
            RuntimeDependencies.Add(Path.Combine(ModuleDirectory, "next", "lib", "Windows-x86", "Release", "next.dll"));
        }
        else if (Target.Platform == UnrealTargetPlatform.Win64)
		{
			PublicLibraryPaths.Add(Path.Combine(ModuleDirectory, "next", "lib", "Windows-x86_64", "Release"));
			PublicAdditionalLibraries.Add("next.lib");
            RuntimeDependencies.Add(Path.Combine(ModuleDirectory, "next", "lib", "Windows-x86_64", "Release", "next.dll"));
        }
        else if (Target.Platform == UnrealTargetPlatform.Mac)
        {
            PublicDelayLoadDLLs.Add(Path.Combine(ModuleDirectory, "next", "lib", "macOS-x86_64", "Release", "libnext.dylib"));
            RuntimeDependencies.Add(Path.Combine(ModuleDirectory, "next", "lib", "Windows-x86", "Release", "libnext.dylib"));
        }
        else if (Target.Platform == UnrealTargetPlatform.Linux)
        {
            PrivateRuntimeLibraryPaths.Add(Path.Combine(ModuleDirectory, "next", "lib", "Linux-x86_64", "Release"));
            PublicDelayLoadDLLs.Add(Path.Combine(ModuleDirectory, "next", "lib", "Linux-x86_64", "Release", "libnext.so"));
            PublicAdditionalLibraries.Add(Path.Combine(ModuleDirectory, "next", "lib", "Linux-x86_64", "Release", "libnext.so"));
            RuntimeDependencies.Add(Path.Combine(ModuleDirectory, "next", "lib", "Linux-x86_64", "Release", "libnext.so"));
        }
        */
    }
}
