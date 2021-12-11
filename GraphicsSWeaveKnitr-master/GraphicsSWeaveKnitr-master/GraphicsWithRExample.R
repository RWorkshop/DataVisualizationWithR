# http://csg.sph.umich.edu/docs/R/graphics-1.pdf

rmt <- matrix(rexp(1000*16),nrow=16)

mns <-
# Apply the mean function to columns
+
cbind(rmt[ 1,],
# means ofsamplesof1
+
apply(rmt[1:4,],2,mean),
# means of samples of 4
+
apply(rmt[1:16,],2,mean)
# means of samples of 16
+ )
>
meds <-
# Apply the
median function
to columns
+
cbind(rmt[1,],
# medians of samples of 1

apply(rmt[1:4,],2,median),
# medians of samples of 4

apply(rmt[ 1:16, ], 2, median)
# medians of samples of 16
+ )
