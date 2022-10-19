public class galeri {
Integer audi=0;
Integer bmw=0;
Integer toplamSehir=0;
static Integer tumaraclarim=0;
  List<String>  audiAraci = new List<String>();
  List<String>  bmwAraci = new List<String>();
    public void kayitAudi(String aracisim){
        audiAraci.add(aracisim);
        ekleAudi(1);
    }
    public void ekleAudi(Integer yeniAudi){
      audi=audi+yeniAudi;
      toplamSehir=toplamSehir+yeniAudi;
      tumaraclarim+=yeniAudi;
    }
    public Integer hesaplaAudi(){
        return audi;
    }
    public void ekleBmw(Integer yeniBmw){
      bmw=bmw+yeniBmw;
      toplamSehir+=yeniBmw;
      tumaraclarim+=yeniBmw;
    }
    public Integer hesaplaBmw(){
        return bmw;
    }
     public Integer hesaplasehir(){
        return toplamSehir;
    }
     public static Integer hesaplatum(){
        return tumaraclarim;
    }
}