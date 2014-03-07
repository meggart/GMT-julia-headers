macro c(ret_type, func, arg_types, lib)
    local args_in = Any[ symbol(string('a',x)) for x in 1:length(arg_types.args) ]
    quote
        $(esc(func))($(args_in...)) = ccall( ($(string(func)), $(Expr(:quote, lib)) ), $ret_type, $arg_types, $(args_in...) )
    end
end


const EXTERN_MSC = 
# begin enum ANONYMOUS_1
typealias ANONYMOUS_1 Uint32
const GMT_USAGE = 0
const GMT_SYNOPSIS = 1
const GMT_STR16 = 16
# end enum ANONYMOUS_1
# begin enum ANONYMOUS_2
typealias ANONYMOUS_2 Uint32
const GMT_CHAR = 0
const GMT_UCHAR = 1
const GMT_SHORT = 2
const GMT_USHORT = 3
const GMT_INT = 4
const GMT_UINT = 5
const GMT_LONG = 6
const GMT_ULONG = 7
const GMT_FLOAT = 8
const GMT_DOUBLE = 9
const GMT_TEXT = 10
const GMT_DATETIME = 11
const GMT_N_TYPES = 12
# end enum ANONYMOUS_2
const GMT_B_OPT = "-B<args>"
const GMT_I_OPT = "-I<xinc>[<unit>][=|+][/<yinc>[<unit>][=|+]]"
const GMT_J_OPT = "-J<args>"
const GMT_R2_OPT = "-R[<unit>]<xmin>/<xmax>/<ymin>/<ymax>[r]"
const GMT_R3_OPT = "-R[<unit>]<xmin>/<xmax>/<ymin>/<ymax>[/<zmin>/<zmax>][r]"
const GMT_U_OPT = "-U[<just>/<dx>/<dy>/][c|<label>]"
const GMT_V_OPT = "-V[<level>]"
const GMT_X_OPT = "-X[a|c|r]<xshift>[<unit>]"
const GMT_Y_OPT = "-Y[a|c|r]<yshift>[<unit>]"
const GMT_a_OPT = "-a<col>=<name>[,...]"
const GMT_b_OPT = "-b[i|o][<ncol>][t][w][+L|B]"
const GMT_c_OPT = "-c<ncopies>"
const GMT_f_OPT = "-f[i|o]<info>"
const GMT_g_OPT = "-g[a]x|y|d|X|Y|D|[<col>]z[-|+]<gap>[<unit>]"
const GMT_h_OPT = "-h[i|o][<nrecs>][+c][+d][+r<remark>][+t<title>]"
const GMT_i_OPT = "-i<cols>[l][s<scale>][o<offset>][,...]"
const GMT_n_OPT = "-n[b|c|l|n][+a][+b<BC>][+c][+t<threshold>]"
const GMT_o_OPT = "-o<cols>[,...]"
const GMT_p_OPT = "-p[x|y|z]<azim>/<elev>[/<zlevel>][+w<lon0>/<lat0>[/<z0>][+v<x0>/<y0>]"
const GMT_r_OPT = "-r"
const GMT_s_OPT = "-s[<cols>][a|r]"
const GMT_t_OPT = "-t<transp>"
const GMT_colon_OPT = "-:[i|o]"
const GMT_FFT_OPT = "[f|q|s|<nx>/<ny>][+a|d|l][+e|m|n][+t<width>][+w<suffix>][+z[p]]"
# begin enum ANONYMOUS_3
typealias ANONYMOUS_3 Uint32
const GMT_OPT_USAGE = 63
const GMT_OPT_SYNOPSIS = 94
const GMT_OPT_PARAMETER = 45
const GMT_OPT_INFILE = 60
const GMT_OPT_OUTFILE = 62
# end enum ANONYMOUS_3
# begin enum ANONYMOUS_4
typealias ANONYMOUS_4 Uint32
const GMT_IS_FILE = 0
const GMT_IS_STREAM = 1
const GMT_IS_FDESC = 2
const GMT_IS_DUPLICATE = 3
const GMT_IS_REFERENCE = 4
# end enum ANONYMOUS_4
# begin enum ANONYMOUS_5
typealias ANONYMOUS_5 Uint32
const GMT_VIA_NONE = 0
const GMT_VIA_VECTOR = 100
const GMT_VIA_MATRIX = 200
const GMT_VIA_OUTPUT = 2048
# end enum ANONYMOUS_5
# begin enum ANONYMOUS_6
typealias ANONYMOUS_6 Uint32
const GMT_IS_DATASET = 0
const GMT_IS_TEXTSET = 1
const GMT_IS_GRID = 2
const GMT_IS_CPT = 3
const GMT_IS_IMAGE = 4
const GMT_IS_VECTOR = 5
const GMT_IS_MATRIX = 6
const GMT_IS_COORD = 7
# end enum ANONYMOUS_6
# begin enum ANONYMOUS_7
typealias ANONYMOUS_7 Uint32
const GMT_COMMENT_IS_TEXT = 0
const GMT_COMMENT_IS_OPTION = 1
const GMT_COMMENT_IS_COMMAND = 2
const GMT_COMMENT_IS_REMARK = 4
const GMT_COMMENT_IS_TITLE = 8
const GMT_COMMENT_IS_NAME_X = 16
const GMT_COMMENT_IS_NAME_Y = 32
const GMT_COMMENT_IS_NAME_Z = 64
const GMT_COMMENT_IS_COLNAMES = 128
const GMT_COMMENT_IS_RESET = 256
# end enum ANONYMOUS_7
# begin enum ANONYMOUS_8
typealias ANONYMOUS_8 Cint
const GMT_NOTSET = -1
const GMT_NOERROR = 0
# end enum ANONYMOUS_8
# begin enum ANONYMOUS_9
typealias ANONYMOUS_9 Cint
const GMT_MODULE_EXIST = -3
const GMT_MODULE_PURPOSE = -2
const GMT_MODULE_OPT = -1
const GMT_MODULE_CMD = 0
# end enum ANONYMOUS_9
# begin enum ANONYMOUS_10
typealias ANONYMOUS_10 Uint32
const GMT_IN = 0
const GMT_OUT = 1
const GMT_ERR = 2
# end enum ANONYMOUS_10
# begin enum ANONYMOUS_11
typealias ANONYMOUS_11 Uint32
const GMT_X = 0
const GMT_Y = 1
const GMT_Z = 2
# end enum ANONYMOUS_11
# begin enum ANONYMOUS_12
typealias ANONYMOUS_12 Uint32
const GMT_ADD_FILES_IF_NONE = 1
const GMT_ADD_FILES_ALWAYS = 2
const GMT_ADD_STDIO_IF_NONE = 4
const GMT_ADD_STDIO_ALWAYS = 8
const GMT_ADD_EXISTING = 16
const GMT_ADD_DEFAULT = 6
# end enum ANONYMOUS_12
# begin enum ANONYMOUS_13
typealias ANONYMOUS_13 Uint32
const GMT_IO_DONE = 0
const GMT_IO_ASCII = 512
const GMT_IO_RESET = 32768
const GMT_IO_UNREG = 16384
# end enum ANONYMOUS_13
# begin enum ANONYMOUS_14
typealias ANONYMOUS_14 Uint32
const GMT_READ_DOUBLE = 0
const GMT_READ_NORMAL = 0
const GMT_READ_TEXT = 1
const GMT_READ_MIXED = 2
const GMT_FILE_BREAK = 4
# end enum ANONYMOUS_14
# begin enum ANONYMOUS_15
typealias ANONYMOUS_15 Uint32
const GMT_WRITE_DOUBLE = 0
const GMT_WRITE_TEXT = 1
const GMT_WRITE_SEGMENT_HEADER = 2
const GMT_WRITE_TABLE_HEADER = 3
const GMT_WRITE_TABLE_START = 4
const GMT_WRITE_NOLF = 16
# end enum ANONYMOUS_15
# begin enum ANONYMOUS_16
typealias ANONYMOUS_16 Uint32
const GMT_HEADER_OFF = 0
const GMT_HEADER_ON = 1
# end enum ANONYMOUS_16
# begin enum ANONYMOUS_17
typealias ANONYMOUS_17 Cint
const GMT_WRITE_OGR = -1
const GMT_WRITE_SET = 0
const GMT_WRITE_TABLE = 1
const GMT_WRITE_SEGMENT = 2
const GMT_WRITE_TABLE_SEGMENT = 3
# end enum ANONYMOUS_17
# begin enum ANONYMOUS_18
typealias ANONYMOUS_18 Uint32
const GMT_ALLOCATED_EXTERNALLY = 0
const GMT_ALLOCATED_BY_GMT = 1
# end enum ANONYMOUS_18
# begin enum ANONYMOUS_19
typealias ANONYMOUS_19 Uint32
const GMT_ALLOC_NORMAL = 0
const GMT_ALLOC_VERTICAL = 1
const GMT_ALLOC_HORIZONTAL = 2
# end enum ANONYMOUS_19
# begin enum ANONYMOUS_20
typealias ANONYMOUS_20 Uint32
const GMT_DUPLICATE_NONE = 0
const GMT_DUPLICATE_ALLOC = 1
const GMT_DUPLICATE_DATA = 2
# end enum ANONYMOUS_20
# begin enum ANONYMOUS_21
typealias ANONYMOUS_21 Uint32
const GMT_WRITE_NORMAL = 0
const GMT_WRITE_HEADER = 1
const GMT_WRITE_SKIP = 2
# end enum ANONYMOUS_21
# begin enum ANONYMOUS_22
typealias ANONYMOUS_22 Uint32
const GMT_FFT_FWD = 0
const GMT_FFT_INV = 1
const GMT_FFT_REAL = 0
const GMT_FFT_COMPLEX = 1
# end enum ANONYMOUS_22
# begin enum ANONYMOUS_23
typealias ANONYMOUS_23 Uint32
const GMT_TIME_NONE = 0
const GMT_TIME_CLOCK = 1
const GMT_TIME_ELAPSED = 2
const GMT_TIME_RESET = 4
# end enum ANONYMOUS_23
# begin enum ANONYMOUS_24
typealias ANONYMOUS_24 Uint32
const GMT_MSG_QUIET = 0
const GMT_MSG_NORMAL = 1
const GMT_MSG_COMPAT = 2
const GMT_MSG_VERBOSE = 3
const GMT_MSG_LONG_VERBOSE = 4
const GMT_MSG_DEBUG = 5
# end enum ANONYMOUS_24
# begin enum ANONYMOUS_25
typealias ANONYMOUS_25 Uint32
const GMT_GRID_NODE_REG = 0
const GMT_GRID_PIXEL_REG = 1
const GMT_GRID_DEFAULT_REG = 1024
# end enum ANONYMOUS_25
# begin enum ANONYMOUS_26
typealias ANONYMOUS_26 Uint32
const GMT_XLO = 0
const GMT_XHI = 1
const GMT_YLO = 2
const GMT_YHI = 3
const GMT_ZLO = 4
const GMT_ZHI = 5
# end enum ANONYMOUS_26
# begin enum ANONYMOUS_27
typealias ANONYMOUS_27 Uint32
const GMT_TBL = 0
const GMT_SEG = 1
const GMT_ROW = 2
const GMT_COL = 3
# end enum ANONYMOUS_27
# begin enum ANONYMOUS_28
typealias ANONYMOUS_28 Uint32
const GMT_GRID_IS_REAL = 0
const GMT_GRID_ALL = 0
const GMT_GRID_HEADER_ONLY = 1
const GMT_GRID_DATA_ONLY = 2
const GMT_GRID_IS_COMPLEX_REAL = 4
const GMT_GRID_IS_COMPLEX_IMAG = 8
const GMT_GRID_IS_COMPLEX_MASK = 12
const GMT_GRID_NO_HEADER = 16
const GMT_GRID_ROW_BY_ROW = 32
const GMT_GRID_ROW_BY_ROW_MANUAL = 64
# end enum ANONYMOUS_28
# begin enum ANONYMOUS_29
typealias ANONYMOUS_29 Uint32
const GMT_GRID_UNIT_LEN80 = 80
const GMT_GRID_TITLE_LEN80 = 80
const GMT_GRID_VARNAME_LEN80 = 80
const GMT_GRID_COMMAND_LEN320 = 320
const GMT_GRID_REMARK_LEN160 = 160
const GMT_GRID_NAME_LEN256 = 256
const GMT_GRID_HEADER_SIZE = 892
# end enum ANONYMOUS_29
# begin enum ANONYMOUS_30
typealias ANONYMOUS_30 Uint32
const GMT_IS_POINT = 1
const GMT_IS_LINE = 2
const GMT_IS_POLY = 4
const GMT_IS_PLP = 7
const GMT_IS_SURFACE = 8
const GMT_IS_NONE = 16
# end enum ANONYMOUS_30
# begin enum ANONYMOUS_31
typealias ANONYMOUS_31 Uint32
const GMT_IS_PERIMETER = 0
const GMT_IS_HOLE = 1
# end enum ANONYMOUS_31
# begin enum ANONYMOUS_32
typealias ANONYMOUS_32 Uint32
const GMT_IO_DATA_RECORD = 0
const GMT_IO_TABLE_HEADER = 1
const GMT_IO_SEGMENT_HEADER = 2
const GMT_IO_ANY_HEADER = 3
const GMT_IO_MISMATCH = 4
const GMT_IO_EOF = 8
const GMT_IO_NAN = 16
const GMT_IO_NEW_SEGMENT = 18
const GMT_IO_GAP = 32
const GMT_IO_LINE_BREAK = 58
const GMT_IO_NEXT_FILE = 64
# end enum ANONYMOUS_32
# begin enum ANONYMOUS_33
typealias ANONYMOUS_33 Uint32
const GMT_RGB = 0
const GMT_CMYK = 1
const GMT_HSV = 2
const GMT_COLORINT = 4
const GMT_NO_COLORNAMES = 8
# end enum ANONYMOUS_33
# begin enum ANONYMOUS_34
typealias ANONYMOUS_34 Uint32
const GMT_BGD = 0
const GMT_FGD = 1
const GMT_NAN = 2
# end enum ANONYMOUS_34
# begin enum ANONYMOUS_35
typealias ANONYMOUS_35 Uint32
const GMT_CPT_REQUIRED = 0
const GMT_CPT_OPTIONAL = 1
# end enum ANONYMOUS_35
# begin enum ANONYMOUS_36
typealias ANONYMOUS_36 Uint32
const GMT_CPT_NO_BNF = 1
const GMT_CPT_EXTEND_BNF = 2
# end enum ANONYMOUS_36
# begin enum ANONYMOUS_37
typealias ANONYMOUS_37 Uint32
const GMT_IS_ROW_FORMAT = 0
const GMT_IS_COL_FORMAT = 1
# end enum ANONYMOUS_37
