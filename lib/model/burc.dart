class Burc{
  final String burcAdi;
  final String burcTarihi;
  final String burcGenelOzellikler;
  final String burcBuyukResim;
  final String burcKucukResim;

  get burcadi=>burcAdi;
  get burctarihi=>burcTarihi;
  get burcgenelOz=>burcGenelOzellikler;
  get burckucukIMG=>burcKucukResim;
  get burcbuyukIMG=>burcBuyukResim;



  const Burc(this.burcAdi,this.burcTarihi,this.burcGenelOzellikler,this.burcKucukResim,this.burcBuyukResim);

  @override
  String toString() {

    return "$burcAdi burcu özellikleri";
  }
}