fcs2csv <- function(in.file, out.file)
{
	packageExists <- require(flowCore)
	if(!packageExists)
	{
		stop( "Please install flowCore first.", call.=FALSE)
	}

	FCS <- read.FCS(in.file, transformation=FALSE)
	write.csv(exprs(FCS), file=out.file, row.names=FALSE)
}