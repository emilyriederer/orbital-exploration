{{ config( materialized="view") }}

SELECT
  CASE
    WHEN "t0"."oh__contract_Two_year" <= 0.5
    THEN CASE
      WHEN "t0"."oh__tech_support_No" <= 0.5
      THEN CASE
        WHEN "t0"."oh__internet_service_Fiber_optic" <= 0.5
        THEN 0.013439218513667583
        ELSE 0.031144464388489723
      END
      ELSE CASE
        WHEN "t0"."oh__online_security_No" <= 0.5
        THEN 0.024533001706004143
        ELSE 0.05022699013352394
      END
    END
    ELSE CASE
      WHEN "t0"."oh__tech_support_No_internet_service" <= 0.5
      THEN CASE
        WHEN "t0"."oh__internet_service_Fiber_optic" <= 0.5
        THEN 0.0015126049984246492
        ELSE 0.007093821652233601
      END
      ELSE CASE
        WHEN CAST("t0"."remainder__senior_citizen" AS DOUBLE) <= 0.5
        THEN 0.001013513538055122
        ELSE 0.0
      END
    END
  END + CASE
    WHEN CAST("t0"."remainder__tenure" AS DOUBLE) <= 17.5
    THEN CASE
      WHEN "t0"."oh__online_security_No" <= 0.5
      THEN CASE
        WHEN "t0"."oh__contract_Month_to_month" <= 0.5
        THEN 0.004779411945492029
        ELSE 0.02765667624771595
      END
      ELSE CASE
        WHEN "t0"."oh__paperless_billing_No" <= 0.5
        THEN 0.06395450234413147
        ELSE 0.04219409450888634
      END
    END
    ELSE CASE
      WHEN "t0"."oh__contract_Two_year" <= 0.5
      THEN CASE
        WHEN "t0"."oh__streaming_tv_Yes" <= 0.5
        THEN 0.014977973885834217
        ELSE 0.03168155997991562
      END
      ELSE CASE
        WHEN "t0"."oh__device_protection_Yes" <= 0.5
        THEN 0.0015037594130262733
        ELSE 0.004862843081355095
      END
    END
  END + CASE
    WHEN "t0"."oh__streaming_tv_No_internet_service" <= 0.5
    THEN CASE
      WHEN "t0"."oh__contract_Month_to_month" <= 0.5
      THEN CASE
        WHEN "t0"."remainder__total_charges" <= 337.375
        THEN 0.023571427911520004
        ELSE 0.007877892814576626
      END
      ELSE CASE
        WHEN "t0"."oh__internet_service_Fiber_optic" <= 0.5
        THEN 0.029152823612093925
        ELSE 0.054775550961494446
      END
    END
    ELSE CASE
      WHEN "t0"."remainder__total_charges" <= 38.75
      THEN CASE
        WHEN "t0"."oh__payment_method_Bank_transfer_automatic" <= 0.5
        THEN 0.03588235378265381
        ELSE 0.027272727340459824
      END
      ELSE CASE
        WHEN "t0"."oh__payment_method_Bank_transfer_automatic" <= 0.5
        THEN 0.0020735154394060373
        ELSE 0.006325301248580217
      END
    END
  END + CASE
    WHEN "t0"."oh__online_security_No" <= 0.5
    THEN CASE
      WHEN CAST("t0"."remainder__tenure" AS DOUBLE) <= 3.5
      THEN CASE
        WHEN "t0"."oh__dependents_No" <= 0.5
        THEN 0.021693121641874313
        ELSE 0.03188976272940636
      END
      ELSE CASE
        WHEN "t0"."oh__online_security_Yes" <= 0.5
        THEN 0.003599999938160181
        ELSE 0.01346356887370348
      END
    END
    ELSE CASE
      WHEN "t0"."oh__payment_method_Bank_transfer_automatic" <= 0.5
      THEN CASE
        WHEN "t0"."oh__contract_One_year" <= 0.5
        THEN 0.04805825278162956
        ELSE 0.020603014156222343
      END
      ELSE CASE
        WHEN "t0"."oh__contract_Month_to_month" <= 0.5
        THEN 0.012773722410202026
        ELSE 0.036858975887298584
      END
    END
  END + CASE
    WHEN CAST("t0"."remainder__tenure" AS DOUBLE) <= 22.5
    THEN CASE
      WHEN "t0"."remainder__monthly_charges" <= 68.92499542236328
      THEN CASE
        WHEN "t0"."oh__streaming_tv_No" <= 0.5
        THEN 0.016864608973264694
        ELSE 0.03721518814563751
      END
      ELSE CASE
        WHEN "t0"."oh__streaming_tv_Yes" <= 0.5
        THEN 0.06360052525997162
        ELSE 0.06537842005491257
      END
    END
    ELSE CASE
      WHEN "t0"."oh__online_security_No" <= 0.5
      THEN CASE
        WHEN "t0"."remainder__monthly_charges" <= 93.67499542236328
        THEN 0.004505494609475136
        ELSE 0.020128823816776276
      END
      ELSE CASE
        WHEN "t0"."oh__contract_Two_year" <= 0.5
        THEN 0.028325509279966354
        ELSE 0.007419354747980833
      END
    END
  END + CASE
    WHEN CAST("t0"."remainder__tenure" AS DOUBLE) <= 10.5
    THEN CASE
      WHEN "t0"."oh__device_protection_No_internet_service" <= 0.5
      THEN CASE
        WHEN "t0"."oh__internet_service_DSL" <= 0.5
        THEN 0.07018405199050903
        ELSE 0.0448920875787735
      END
      ELSE CASE WHEN "t0"."oh__contract_Two_year" <= 0.5 THEN 0.020283019170165062 ELSE 0.0 END
    END
    ELSE CASE
      WHEN "t0"."oh__payment_method_Electronic_check" <= 0.5
      THEN CASE
        WHEN "t0"."oh__online_backup_No_internet_service" <= 0.5
        THEN 0.014891180209815502
        ELSE 0.0014418126083910465
      END
      ELSE CASE
        WHEN "t0"."oh__tech_support_No" <= 0.5
        THEN 0.02012072503566742
        ELSE 0.04172588884830475
      END
    END
  END + CASE
    WHEN "t0"."oh__contract_One_year" <= 0.5
    THEN CASE
      WHEN "t0"."oh__contract_Month_to_month" <= 0.5
      THEN CASE
        WHEN "t0"."oh__partner_Yes" <= 0.5
        THEN 0.008256880566477776
        ELSE 0.002288135699927807
      END
      ELSE CASE
        WHEN "t0"."oh__online_backup_No_internet_service" <= 0.5
        THEN 0.04677615687251091
        ELSE 0.017590822651982307
      END
    END
    ELSE CASE
      WHEN "t0"."oh__streaming_tv_Yes" <= 0.5
      THEN CASE
        WHEN CAST("t0"."remainder__tenure" AS DOUBLE) <= 2.5
        THEN 0.029999999329447746
        ELSE 0.004961831960827112
      END
      ELSE CASE
        WHEN "t0"."oh__streaming_movies_No" <= 0.5
        THEN 0.02201405167579651
        ELSE 0.006285714451223612
      END
    END
  END + CASE
    WHEN "t0"."oh__online_backup_No" <= 0.5
    THEN CASE
      WHEN "t0"."oh__contract_Two_year" <= 0.5
      THEN CASE
        WHEN "t0"."oh__streaming_movies_No_internet_service" <= 0.5
        THEN 0.029798271134495735
        ELSE 0.012274774722754955
      END
      ELSE CASE
        WHEN "t0"."oh__multiple_lines_Yes" <= 0.5
        THEN 0.000887573987711221
        ELSE 0.0028023598715662956
      END
    END
    ELSE CASE
      WHEN "t0"."oh__contract_Month_to_month" <= 0.5
      THEN CASE
        WHEN "t0"."oh__internet_service_DSL" <= 0.5
        THEN 0.017445482313632965
        ELSE 0.004914530087262392
      END
      ELSE CASE
        WHEN "t0"."remainder__total_charges" <= 243.625
        THEN 0.06635262817144394
        ELSE 0.042307693511247635
      END
    END
  END + CASE
    WHEN "t0"."oh__device_protection_No_internet_service" <= 0.5
    THEN CASE
      WHEN "t0"."oh__online_security_Yes" <= 0.5
      THEN CASE
        WHEN "t0"."oh__contract_One_year" <= 0.5
        THEN 0.04548784717917442
        ELSE 0.020214669406414032
      END
      ELSE CASE
        WHEN "t0"."oh__payment_method_Electronic_check" <= 0.5
        THEN 0.008915502578020096
        ELSE 0.025708060711622238
      END
    END
    ELSE CASE
      WHEN CAST("t0"."remainder__tenure" AS DOUBLE) <= 1.5
      THEN CASE
        WHEN "t0"."oh__contract_Month_to_month" <= 0.5
        THEN 0.0
        ELSE 0.033742330968379974
      END
      ELSE CASE
        WHEN "t0"."oh__partner_No" <= 0.5
        THEN 0.002449567662551999
        ELSE 0.005581395234912634
      END
    END
  END + CASE
    WHEN "t0"."oh__device_protection_No" <= 0.5
    THEN CASE
      WHEN "t0"."oh__online_security_No" <= 0.5
      THEN CASE
        WHEN "t0"."oh__contract_Two_year" <= 0.5
        THEN 0.016844207420945168
        ELSE 0.0022727272007614374
      END
      ELSE CASE
        WHEN "t0"."oh__internet_service_Fiber_optic" <= 0.5
        THEN 0.021105527877807617
        ELSE 0.04139534756541252
      END
    END
    ELSE CASE
      WHEN "t0"."oh__payment_method_Electronic_check" <= 0.5
      THEN CASE
        WHEN "t0"."oh__paperless_billing_Yes" <= 0.5
        THEN 0.02114197611808777
        ELSE 0.0316617488861084
      END
      ELSE CASE
        WHEN "t0"."oh__contract_Month_to_month" <= 0.5
        THEN 0.016867469996213913
        ELSE 0.057990506291389465
      END
    END
  END AS "pred",
  "customer_id"
FROM {{ ref('prep_feat')}} AS "t0"