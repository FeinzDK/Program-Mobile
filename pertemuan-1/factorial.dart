 int fakt(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * fakt(n - 1);
  }
}

void main() {
  print("Nilai faktorial dari 10 adalah ${fakt(10)}");
  print("Nilai faktorial dari 20 adalah ${fakt(20)}");
  print("Nilai faktorial dari 30 adalah ${fakt(30)}");
}
