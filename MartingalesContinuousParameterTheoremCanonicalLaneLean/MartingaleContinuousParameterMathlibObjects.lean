import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FiltrationSpace where
  carrier : Type
  sigmaAlgebra : carrier → Set (Set carrier)
  filtration : ℕ → Set (Set carrier)

structure ContinuousMartingaleObject where
  space : FiltrationSpace
  adapted : Prop
  integrable : Prop
  martingaleProperty : Prop
  continuousPaths : Prop
  conclusion : continuousPaths ∧ martingaleProperty

structure MartingaleEndgameState where
  object : ContinuousMartingaleObject

def MartingaleWitnessClosed (O : ContinuousMartingaleObject) : Prop :=
  O.conclusion

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse