std = luajit
codes = true

self = false

-- Glorious list of warnings: https://luacheck.readthedocs.io/en/stable/warnings.html
ignore = {
  '212', -- Unused argument, In the case of callback function, _arg_name is easier to understand than _, so this option is set to off.
  '122', -- Indirectly setting a readonly global
}

globals = {
  '_',
  '__AstronautaMapStore',
  'Map_n',
  'Map_i',
  'Map_v',
  'Map_t',
  'Map_c',
}

-- Global objects defined by the C code
read_globals = {
  'vim',
}
