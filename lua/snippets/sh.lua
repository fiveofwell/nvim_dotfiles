local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
	s("source", {
		t({
			'SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"',
			'source "${SCRIPT_DIR}/',
		}),
		i(1, "your_script.sh"),
		t({'"' }),
	}),

	s("getopts", {
		t({
			'while getopts "sp:" OPT',
			'do',
			'	case $OPT in',
			'	s)',
			'		;;',
			'	p)',
			'		${OPTARG};;',
			'	*)',
			'		exit 1 ;;',
			'	esac',
			'done',
			'',
			'shift $((OPTIND -1))',
		}),
	}),



}


