#1 Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

#1.a Peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0.20 dari populasi menghadiri acara vaksinasi (distribusi geometrik)
x <- 3
p <- 0.20
paste("Hasil : ", dgeom(x,p))

#1.b mean Distribusi geometrik dengan 10000 data random, prob = 0.20 dimana distribusi geometrik acara tersebut X = 3 (Distribusi geometrika acak() == 3)
n  <- 10000
mean(rgeom(n,p) == 3)

#1.c Bandingkan hasil poin a dan b, apa kesimpulan yang didapatkan
# Hasil yang didapatkan adalah a = 0.128 dan b = 0.1076
# Dari hasil tersebut dapat disimpulkan bahwa 

#1.d Histogram Distribusi Geometrik, peluang x = 3 gagal sebelum sukses pertama
hist(rgeom(n,prob = 0.20), main = "Histogram Distribusi Geometrik")

#1.e Nilai rataan dan varian dari distribusi geometrik
rataan = 1/p
paste("Nilai rataan : ",rataan)

varian = (1-p)/p^2
paste("Nilai varian : ",varian)




#2 Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

#2.a Peluang terdapat 4 pasien yang sembuh
n <- 20
peluangSembuh <- 0.2
pasienSembuh <- 4

a = dbinom(pasienSembuh,n,peluangSembuh)
a

#2.b Gambarkan grafik histogram berdasarkan kasus tersebut
x <- 0:20
plot(x,dbinom(x,n,peluangSembuh),
     type = 'h',
     main='Distribusi Binomial',
     ylab='Peluang',
     xlab = 'jumlah n')

#2.c Nilai rataan dan varian dari distribusi normal
rataan = pasienSembuh * peluangSembuh
paste("Rataan : ", rataan)
varian = rataan * (1- peluangSembuh)
paste("Varian : ", varian)



#3 Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di ruamh sakit ini setiap hari. (gunakan Distribusi Poisson)

#3.a Peluang bahwa 6 bayi akan lahir di rumah sakit ini besok
x = 6
lambda = 4.5
paste("Hasil : ",dpois(x,lambda))

#3.b Simulasi dan buat histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
set.seed(0)
interval = 1:365
hist(rpois(interval, lambda), type="h")

#3.c Bandingkan hasil poin a dan b, apa kesimpulan
#Hasil dari bagian A dikalian 365 memiliki hasil yang mendekati hasil dari bagian b

#3.d Nilai rataan dan varian dari distribusi poisson
rataan = lambda
varian = lambda

paste("Nilai Rataan : ", rataan)
paste("Nilai Varian : ", varian)




#4 Diketahui nilai x = 2 dan v = 10. Tentukan : 

#4.a Fungsi probabilitas dan distribusi chi-square
x <- 2
v <- 10

dchisq(x,v,ncp=0)

#4.b Histogram dari distribusi chi-square dengan 100 data random
hist(rchisq(100,v), main = "Distribusi Chi-Square dengan 100 data random", labels = T)

#4.c Nilai rataan dan varian dari distribusi chi-square
rataan <- v
varian <- 2 * v

paste("Nilai Rataan : ", rataan)
paste("Nilai Varian : ", varian)



#5 Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

#5.a Fungsi Probabilitas dan Distribusi Eksponensial
n <- 10
lambda <- 3
paste("Hasil : ", rexp(n,rate = lambda))

#5.b Histogram dan Distribusi Eksponensial untuk 10,100,1000, dan 10000 bilangan random
hist(rexp(10, rate = lambda), main = "Distribusi Eksonensial untuk 10 bilangan random")
hist(rexp(100, rate = lambda), main = "Distribusi Eksonensial untuk 100 bilangan random")
hist(rexp(1000, rate = lambda), main = "Distribusi Eksonensial untuk 1000 bilangan random")
hist(rexp(10000, rate = lambda), main = "Distribusi Eksonensial untuk 10000 bilangan random")

#5.c Nilai Rataan dan Varian dari distribusi eksponensial untuk n = 100 dan λ = 3

n <- 100
set.seed(1)
lambda <- 3
rataan = mean(rexp(n,rate = lambda))
varian = sd(rexp(n, rate = lambda))^2

paste("Nilai Rataan : ", rataan)
paste("Nilai Varian : ", varian)


#6 Diketahui generate random nilai sebanyak 100 data, mean = 50 sd 8. Tentukan

#6.a Fungsi Probabilitas dan Distribusi Normal, hitung Z-Score nya dan plot data generate randomnya dalam bentu grafik.
n <- 100
mean <- 50
sd <- 8

z = rnorm(n, mean, sd)
z
#6.b Generate histogram dari distribusi normal dengan breaks 50 dan format penamaan
x <- rnorm(100,50,8)
hist(x,
     breaks = 50,
     main = "5025211020_Calvin Janitra_Probstat_Probstat A_DNhistogram")

#6.c Nilai varian dan hasil generate random nilai distribusi normal
varian = sd^2
paste("Varian : ", varian)
