import canonicalLaneMathlib.AdmissibleClass
import MartingalesContinuousParameterTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse