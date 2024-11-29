
;; title: financial-infrastructure
(define-constant ERR-NOT-AUTHORIZED (err u1001))
(define-constant ERR-INSUFFICIENT-FUNDS (err u1002))
(define-constant ERR-INVALID-PARAMETERS (err u1003))
(define-constant ERR-ALREADY-EXISTS (err u1004))
(define-constant ERR-NOT-FOUND (err u1005))

;; Governance and Access Control
(define-map admin-list principal bool)
(define-map trusted-oracles principal bool)

;; Identity Verification
(define-map did-registry 
  principal 
  {
    did-hash: (buff 32),
    verification-status: bool,
    attestation-timestamp: uint,
    reputation-score: uint
  }
)
