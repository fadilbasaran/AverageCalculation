class Ders {
  final String ad;
  final double harfDegeri;
  final double krediDegeri;

  Ders({required this.ad, required this.harfDegeri, required this.krediDegeri});
  //süslü parantez yazmazsak required yazmamıza gerek yok isimlendirme adına böyle bir yapo oluşturuyoruz

  @override
  String toString() {
    return '$ad $harfDegeri $krediDegeri';
  }
}
