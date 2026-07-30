import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  continuousParameterConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "MartingalesContinuousParameterTheorem",
  theoremName := "MartingalesContinuousParameterTheorem",
  theoremObject := "Martingale convergence and optimal stopping theorems",
  classicalBoundary := "unrestricted continuous parameter filtration",
  continuousParameterConstrainedStatement := "admissible-class closure for continuous parameter martingale theorems",
  certificateLane := "continuous_parameter_constrained",
  carriedRemainder := "full classical continuous parameter theory remains unformalized"
}

theorem theorem_source_key_checked : sourceTheoremStatement.sourceKey = "MartingalesContinuousParameterTheorem" := rfl

end MartingalesContinuousParameterTheoremCanonicalLaneLean
end HautevilleHouse
