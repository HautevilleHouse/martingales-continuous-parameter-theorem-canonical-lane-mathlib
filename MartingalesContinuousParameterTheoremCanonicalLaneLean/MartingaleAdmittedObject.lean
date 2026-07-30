import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MartingaleSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  filtration : Filtration carrier

structure MartingaleAdmittedObject where
  space : MartingaleSpace
  continuousParameter : Prop
  martingaleProperty : Prop
  conclusion : martingaleProperty

def MartingaleWitnessClosed (O : MartingaleAdmittedObject) : Prop :=
  O.martingaleProperty

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse