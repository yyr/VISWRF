## ---------------------------------------------------------------------
# Guess
##
function guess_runid ()
{
    echo
}

## sets the variable
function get_ndom ()
{
    echo
}



## ---------------------------------------------------------------------
# Write conf file
function dir_details ()
{
        cat >> $conf_file <<EOF
; directories
pltdir = "$PWD/plt"
outdir = "$ODIR"

EOF
}

function run_details()
{
    cat >> $conf_file <<EOF
; details about the run
runid = $RUNID
ndom = $NDOM

EOF
}

## ---------------------------------------------------------------------
# writes the conf file
function write_conf()
{
    ## intialize
    cat > $conf_file <<EOF
load "\$VISWRF/param.ncl"

EOF
    dir_details
    run_details
}
