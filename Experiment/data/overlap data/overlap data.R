## �����: ��� 6���� ����ִ� array�� ���������, 
## �� ��Ʈ������ ���� 500��(class1�� 400��, class2�� 100��)
## �� ��Ʈ������ ���� 3��(1��:x��ǥ, 2��:y��ǥ, 3��:class)
## ���1�� 0%��ø, ���2�� 20%��ø, ���3�� 40%, ���4�� 60%, ���5�� 80%, ���6�� 100%��ø

over <- array(0, dim=c(500,3,6))

for (i in 1:6) {
  p <- 10*i-10
  q <- 10*i+40
  over[1:400,1,i] <- matrix(runif(400, min = p, max = q))
  over[1:400,2,i] <- matrix(runif(400, min = 0, max = 100))
  over[401:500,1,i] <- matrix(runif(100, min = 50, max = 100))
  over[401:500,2,i] <- matrix(runif(100, min = 0, max = 100))
  over[1:400,3,i] <- 1
  over[401:500,3,i] <- 2
  r <- 20*i-20
  write.csv (over[,,i], file=paste("overlap",as.character(r),"%",".csv",sep=""))
}


##  �ؿ��� ������� �׷��� �� ##
plot(over[100:400,1:2,2], main = "Overlap 20%", pch=16, xlim = c(0,100), ylim=c(0,100))
points(over[401:500,1,2],over[401:500,2,2],pch=17, col="red")