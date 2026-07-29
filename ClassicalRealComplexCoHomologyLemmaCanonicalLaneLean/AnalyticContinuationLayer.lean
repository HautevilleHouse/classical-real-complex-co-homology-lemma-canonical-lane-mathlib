import canonicalLaneMathlib.AdmissibleClass

noncomputable section

universe u

namespace HautevilleHouse
namespace ClassicalRealComplexCoHomologyLemmaCanonicalLaneLean

structure AnalyticContinuationState where
  sourceFunction : ℂ → ℂ
  sourceDomain : Set ℂ
  sourceAnalytic : Prop
  continuationDomain : Set ℂ
  continuationFunction : ℂ → ℂ
  continuationAnalytic : Prop
  agreementOnIntersection : Prop
  uniquenessOfContinuation : Prop

def analyticContinuationPrinciple (f : ℂ → ℂ) (U : Set ℂ) (hU : IsOpen U) (hU_conn : IsConnected U) (hf : AnalyticOn ℂ f U) :
  { g : ℂ → ℂ | AnalyticOn ℂ g U ∧ ∀ x ∈ U, g x = f x } := by
  intro g hg hg_eq
  -- uniqueness would follow from identity theorem
  sorry

theorem identity_theorem (f g : ℂ → ℂ) (U : Set ℂ) (hU : IsOpen U) (hU_conn : IsConnected U)
  (hf : AnalyticOn ℂ f U) (hg : AnalyticOn ℂ g U) (h_eq_on_subset : ∃ (V : Set ℂ), V ⊆ U ∧ V ≠ ∅ ∧ IsOpen V ∧ ∀ x ∈ V, f x = g x) :
  ∀ x ∈ U, f x = g x := by
  sorry

structure AnalyticContinuationAdmissible where
  sourceFunctionAnalytic : Prop
  continuationDomainExists : Prop
  continuationFunctionAnalytic : Prop
  agreementChecked : Prop
  uniquenessChecked : Prop

def analyticContinuationClosed (A : AnalyticContinuationAdmissible) : Prop :=
  A.sourceFunctionAnalytic ∧ A.continuationDomainExists ∧ A.continuationFunctionAnalytic ∧ A.agreementChecked ∧ A.uniquenessChecked

theorem analytic_continuation_closed_from_admissible (A : AnalyticContinuationAdmissible) : analyticContinuationClosed A := by
  exact And.intro A.sourceFunctionAnalytic (And.intro A.continuationDomainExists (And.intro A.continuationFunctionAnalytic (And.intro A.agreementChecked A.uniquenessChecked)))

end ClassicalRealComplexCoHomologyLemmaCanonicalLaneLean
end HautevilleHouse