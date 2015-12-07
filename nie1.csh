#!/bin/csh

set dir="File-to-be-deleted"

set time_stamp=`date "+%Y%m%d_%H%M_%S"`
set LOG="~/nie.log"

echo  "sleep 1"  		   >  ~/nie.$time_stamp
echo  "/bin/rm -rf $dir" 	   >> ~/nie.$time_stamp
echo  'echo "----------------------------"  >>' "$LOG"    >> ~/nie.$time_stamp
echo  'echo `date` >>' "$LOG"      >> ~/nie.$time_stamp
echo  "echo the tmp file: >> $LOG" >> ~/nie.$time_stamp
echo  "echo $dir >> $LOG" 	   >> ~/nie.$time_stamp
echo  "echo has now been deleted! >> $LOG" >> ~/nie.$time_stamp
echo  'echo "----------------------------"  >>' "$LOG"    >> ~/nie.$time_stamp

tcsh nie.$time_stamp > /dev/null &
