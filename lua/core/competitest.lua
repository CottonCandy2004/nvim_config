require('competitest').setup {
	compile_command = {
		cpp = {
            exec = 'g++',
            args = {
                "-Wall",
                '$(FNAME)', 
                '-o', 
                'E://Code_Workspace//CodeForces//dist//programme_out.exe'
            }
        },
	},
	run_command = {
		cpp = {
            exec = 'E://Code_Workspace//CodeForces//dist//programme_out.exe' },
	},
    testcases_input_file_format = "in$(TCNUM).txt",
    testcases_output_file_format = "ans$(TCNUM).txt",
}

