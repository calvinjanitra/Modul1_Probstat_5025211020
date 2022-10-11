# Modul1_Probstat_5025211020

**<br>Calvin Janitra**
**<br>5025211020
<br>Probstat A**

## SOAL 1
### A. Peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
Penyelesaiannya adalah dengan menggunakan fungsi dgeom(). 
```
Diketahui : 
x = 0.3
p = 0.20

paste("Hasil : ", dgeom(x,p))
```
![1a](https://user-images.githubusercontent.com/95208578/195172964-a1c37afb-0e86-4e44-bb93-31fcf4484b4d.png)

### B. Mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3
Penyelesainnya adalah dengan menggunakan rgeom().
```
Diketahui :
n = 10000

mean(rgeom(n,p) == 3)
```
Rgeom adalah distribusi geometrik acak, generate sebuah nilai pada setiap sampel dengan percobaan sebanyak n kali.
![1b](https://user-images.githubusercontent.com/95208578/195174044-075a154d-34f2-40bd-8b75-4e51a03d1687.png)

### C. Perbandingan hasil poin A dan B
```
Poin A akan selalu menghasilkan nilai peluang yang tetap sedangkan Poin B mendapatkan hasil yang berbeda-beda. Tetapi hasil yang didapatkan di B merupakan estimasi karena hasil poin B selalu mendekati dengan poin A
```
### D. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
![1d](https://user-images.githubusercontent.com/95208578/195175161-182fa789-2814-4db4-9182-185df2880d4c.png)

### E. Nilai Rataan (μ) dan Varian (σ²)
Rataan dan varian didapatkan dari rumus
```
rataan = 1/p
paste("Nilai rataan : ",rataan)

varian = (1-p)/p^2
paste("Nilai varian : ",varian)
```
![image](https://user-images.githubusercontent.com/95208578/195175809-97374b4d-5654-46d8-ae1b-48ca42a8d8a2.png)

## 2. Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
### A. Peluang terdapat 4 pasien yang sembuh
Peneyelsainnya adalah dengan menggunakan dbinom. Dbinom menghasilkan probabilitas mendapatkan sejumlah keberhasilan (x) dalam sejumlah percobaan.
```
n <- 20
peluangSembuh <- 0.2
pasienSembuh <- 4

a = dbinom(pasienSembuh,n,peluangSembuh)
a
```
![image](https://user-images.githubusercontent.com/95208578/195176400-0233c5ef-5426-4017-a333-71fe6e07b9d9.png)

### B. Gambarkan grafik histogram
![image](https://user-images.githubusercontent.com/95208578/195177589-8dfcb15a-cb48-4167-8cbb-44c033d48729.png)

### C. Nilai Rataan (μ) dan Varian (σ²)
Rataan dan varian didapatkan dari rumus berikut
```
rataan = pasienSembuh * peluangSembuh
paste("Rataan : ", rataan)
varian = rataan * (1- peluangSembuh)
paste("Varian : ", varian)
```
![image](https://user-images.githubusercontent.com/95208578/195177730-4862a39f-1d5b-4313-b015-1ec90d948394.png)

## 3. Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari
### A. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok
```
x = 6
lambda = 4.5
paste("Hasil : ",dpois(x,lambda))

```
![image](https://user-images.githubusercontent.com/95208578/195179575-199d8757-2e05-4d28-ba98-a4f2f9325d61.png)

### B. Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun
![image](https://user-images.githubusercontent.com/95208578/195178795-c80eba44-c511-4ab6-b438-4d0e070ccc1b.png)
### C. Bandingkan hasil poin a dan b
```
Jika hasil dari poin a dikalikan dengan 365, maka hasilnya akan mendekati hasil pada poin B.
```
### D. Nilai Rataan (μ) dan Varian (σ²)
Rataan dan varian didapatkan dari rumus
```
rataan = lambda
varian = lambda

paste("Nilai Rataan : ", rataan)
paste("Nilai Varian : ", varian)
```
![image](https://user-images.githubusercontent.com/95208578/195179702-afab5662-2b19-4753-bf75-84e35f0666f2.png)

## 4. Diketahui nilai x = 2 dan v = 10. Tentukan
### A. Fungsi Probabilitas dari Distribusi Chi-Square
```
x <- 2
v <- 10

dchisq(x,v,ncp=0)
```
![image](https://user-images.githubusercontent.com/95208578/195180039-93a62081-2a45-4c07-b04c-4cc17352bfb4.png)

### B. Histogram dari Distribusi Chi-Square dengan 100 data random
![image](https://user-images.githubusercontent.com/95208578/195180166-08d26705-553f-4808-8a01-4ac05264f901.png)

### C. Nilai Rataan (μ) dan Varian (σ²)
Rataan dan varian bisa didapatkan dengan rumus berikut
```
rataan <- v
varian <- 2 * v

paste("Nilai Rataan : ", rataan)
paste("Nilai Varian : ", varian)
```
![image](https://user-images.githubusercontent.com/95208578/195180265-c5700116-0c4b-4767-b365-d9ecd7f9f7d1.png)

## 5. Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3)
### A. Fungsi Probabilitas dari Distribusi Exponensial
```
n <- 10
lambda <- 3
paste("Hasil : ", rexp(n,rate = lambda))
```
![image](https://user-images.githubusercontent.com/95208578/195180565-86cc4a5e-a1e5-4787-82e7-2fcbfbc6454a.png)
### B. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
![image](https://user-images.githubusercontent.com/95208578/195181115-4f081ac5-d74b-45dc-abf6-0aeed880743c.png)
![image](https://user-images.githubusercontent.com/95208578/195181160-eda31b4b-d9a8-42e3-bbac-e9d69a7a1848.png)
![image](https://user-images.githubusercontent.com/95208578/195181204-fb2b5725-e29d-404d-b00d-ec290758bbe0.png)
![image](https://user-images.githubusercontent.com/95208578/195181262-64cb786c-39c4-4b2a-b413-dffe893273ab.png)

### C. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
Rataan dan varian dapat dari rumus
```
n <- 100
set.seed(1)
lambda <- 3
rataan = mean(rexp(n,rate = lambda))
varian = sd(rexp(n, rate = lambda))^2

paste("Nilai Rataan : ", rataan)
paste("Nilai Varian : ", varian)

```
![image](https://user-images.githubusercontent.com/95208578/195181893-42427497-9f5b-4f25-93aa-3d6863c95b39.png)

## 6. Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8
### A. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik
```
n <- 100
mean <- 50
sd <- 8

z = rnorm(n, mean, sd)
z
```
![image](https://user-images.githubusercontent.com/95208578/195182493-cf0f4f3f-41b8-47bd-9ddb-939d6adde4cf.png)


### B. Generate Histogram dari Distribusi Normal dengan breaks 50
### C. 
