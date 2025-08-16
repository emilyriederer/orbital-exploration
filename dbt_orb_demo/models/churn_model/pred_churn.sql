{{ config( materialized="view") }}

WITH "t1" AS (
  SELECT
    "t0"."oh__phone_service_Yes" AS "tcl_v2",
    "t0"."oh__multiple_lines_No" AS "tcl_v3",
    "t0"."oh__multiple_lines_Yes" AS "tcl_v5",
    "t0"."oh__internet_service_DSL" AS "tcl_v6",
    "t0"."oh__internet_service_Fiber_optic" AS "tcl_v7",
    "t0"."oh__internet_service_No" AS "tcl_v8",
    "t0"."oh__online_security_No" AS "tcl_v9",
    "t0"."oh__online_security_No_internet_service" AS "tcl_v10",
    "t0"."oh__online_security_Yes" AS "tcl_v11",
    "t0"."oh__online_backup_No" AS "tcl_v12",
    "t0"."oh__online_backup_No_internet_service" AS "tcl_v13",
    "t0"."oh__online_backup_Yes" AS "tcl_v14",
    "t0"."oh__device_protection_No" AS "tcl_v15",
    "t0"."oh__device_protection_No_internet_service" AS "tcl_v16",
    "t0"."oh__device_protection_Yes" AS "tcl_v17",
    "t0"."oh__tech_support_No" AS "tcl_v18",
    "t0"."oh__tech_support_No_internet_service" AS "tcl_v19",
    "t0"."oh__tech_support_Yes" AS "tcl_v20",
    "t0"."oh__streaming_tv_No" AS "tcl_v21",
    "t0"."oh__streaming_tv_No_internet_service" AS "tcl_v22",
    "t0"."oh__streaming_tv_Yes" AS "tcl_v23",
    "t0"."oh__streaming_movies_No" AS "tcl_v24",
    "t0"."oh__streaming_movies_No_internet_service" AS "tcl_v25",
    "t0"."oh__streaming_movies_Yes" AS "tcl_v26",
    "t0"."oh__gender_Male" AS "tcl_v28",
    "t0"."oh__partner_No" AS "tcl_v29",
    "t0"."oh__partner_Yes" AS "tcl_v30",
    "t0"."oh__dependents_No" AS "tcl_v31",
    "t0"."oh__dependents_Yes" AS "tcl_v32",
    "t0"."oh__contract_Month_to_month" AS "tcl_v33",
    "t0"."oh__contract_One_year" AS "tcl_v34",
    "t0"."oh__contract_Two_year" AS "tcl_v35",
    "t0"."oh__paperless_billing_No" AS "tcl_v36",
    "t0"."oh__paperless_billing_Yes" AS "tcl_v37",
    "t0"."oh__payment_method_Bank_transfer_automatic" AS "tcl_v38",
    "t0"."oh__payment_method_Credit_card_automatic" AS "tcl_v39",
    "t0"."oh__payment_method_Electronic_check" AS "tcl_v40",
    "t0"."oh__payment_method_Mailed_check" AS "tcl_v41",
    CAST("t0"."remainder__tenure" AS DOUBLE) AS "tcl_v42",
    CAST("t0"."remainder__senior_citizen" AS DOUBLE) AS "tcl_v43",
    "t0"."remainder__monthly_charges" AS "tcl_v44",
    "t0"."remainder__total_charges" AS "tcl_v45",
    "customer_id"
  FROM {{ ref('prep_feat')}} AS "t0"
)
SELECT
  CASE
    WHEN "t1"."tcl_v7" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v35" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0005857740761712193
        ELSE 0.0028105906676501036
      END
      ELSE CASE
        WHEN "t1"."tcl_v21" <= 0.5
        THEN 7.947019912535325e-05
        ELSE 0.00036585365887731314
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v35" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v11" <= 0.5
        THEN 0.005295159295201302
        ELSE 0.002866520779207349
      END
      ELSE CASE
        WHEN "t1"."tcl_v42" <= 71.5
        THEN 0.0008675798890180886
        ELSE 8.771930151851848e-05
      END
    END
  END + CASE
    WHEN "t1"."tcl_v33" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v23" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v10" <= 0.5
        THEN 0.0004878048785030842
        ELSE 0.00020125786249991506
      END
      ELSE CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.0021756486967206
        ELSE 0.00026101141702383757
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v9" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v44" <= 91.42499542236328
        THEN 0.002289017429575324
        ELSE 0.004274809267371893
      END
      ELSE CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.003536231815814972
        ELSE 0.0059074475429952145
      END
    END
  END + CASE
    WHEN "t1"."tcl_v13" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v11" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0012816900853067636
        ELSE 0.005219650454819202
      END
      ELSE CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.002118780044838786
        ELSE 0.0007610993925482035
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v45" <= 20.274999618530273
      THEN CASE
        WHEN "t1"."tcl_v30" <= 0.5
        THEN 0.004999999888241291
        ELSE 0.003076923079788685
      END
      ELSE CASE
        WHEN "t1"."tcl_v38" <= 0.5
        THEN 0.0004642857238650322
        ELSE 0.0007307692430913448
      END
    END
  END + CASE
    WHEN "t1"."tcl_v33" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v14" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v26" <= 0.5
        THEN 0.0002654028357937932
        ELSE 0.001198910060338676
      END
      ELSE CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.0014851485611870885
        ELSE 0.000368324137525633
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v44" <= 68.9749984741211
      THEN CASE
        WHEN "t1"."tcl_v18" <= 0.5
        THEN 0.0019905955996364355
        ELSE 0.003518518526107073
      END
      ELSE CASE
        WHEN "t1"."tcl_v11" <= 0.5
        THEN 0.005823045037686825
        ELSE 0.00326153845526278
      END
    END
  END + CASE
    WHEN "t1"."tcl_v7" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v9" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v30" <= 0.5
        THEN 0.0011183597380295396
        ELSE 0.0005008787265978754
      END
      ELSE CASE
        WHEN "t1"."tcl_v38" <= 0.5
        THEN 0.0032266010530292988
        ELSE 0.0016326530603691936
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v9" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0009638554183766246
        ELSE 0.0033725490793585777
      END
      ELSE CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.005261216778308153
        ELSE 0.0010317460400983691
      END
    END
  END + CASE
    WHEN "t1"."tcl_v15" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v35" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.0015437392285093665
        ELSE 0.0039644972421228886
      END
      ELSE CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.00010428737004986033
        ELSE 0.00042635659337975085
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v9" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v30" <= 0.5
        THEN 0.002617647172883153
        ELSE 0.0010761155281215906
      END
      ELSE CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.0035143287386745214
        ELSE 0.005450325086712837
      END
    END
  END + CASE
    WHEN "t1"."tcl_v35" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v13" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.0022949217818677425
        ELSE 0.0046504195779562
      END
      ELSE CASE
        WHEN "t1"."tcl_v30" <= 0.5
        THEN 0.0012499999720603228
        ELSE 0.0008394160540774465
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v7" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v29" <= 0.5
        THEN 0.00011940298281842843
        ELSE 0.00023598820553161204
      END
      ELSE CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.00033980581793002784
        ELSE 0.0006976744043640792
      END
    END
  END + CASE
    WHEN "t1"."tcl_v13" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v24" <= 0.5
        THEN 0.0011524822330102324
        ELSE 0.00042780747753567994
      END
      ELSE CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.0031768232583999634
        ELSE 0.005446009337902069
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v39" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v44" <= 21.024999618530273
        THEN 0.0009517426369711757
        ELSE 0.0001530612207716331
      END
      ELSE CASE WHEN "t1"."tcl_v42" <= 11.5 THEN 0.0006818181718699634 ELSE 0.0 END
    END
  END + CASE
    WHEN "t1"."tcl_v7" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v18" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v42" <= 1.5
        THEN 0.003398692701011896
        ELSE 0.0005136986146681011
      END
      ELSE CASE WHEN "t1"."tcl_v35" <= 0.5 THEN 0.0028621088713407516 ELSE 0.0 END
    END
    ELSE CASE
      WHEN "t1"."tcl_v20" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v34" <= 0.5
        THEN 0.005553422961384058
        ELSE 0.002044444438070059
      END
      ELSE CASE
        WHEN "t1"."tcl_v44" <= 109.67499542236328
        THEN 0.0030019492842257023
        ELSE 0.0011724138166755438
      END
    END
  END + CASE
    WHEN "t1"."tcl_v18" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v32" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v38" <= 0.5
        THEN 0.0016602907562628388
        ELSE 0.0008441558456979692
      END
      ELSE CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0003469640505500138
        ELSE 0.002123893704265356
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v12" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.0033371299505233765
        ELSE 0.00045454545761458576
      END
      ELSE CASE
        WHEN "t1"."tcl_v42" <= 17.5
        THEN 0.006136363837867975
        ELSE 0.002951724221929908
      END
    END
  END + CASE
    WHEN "t1"."tcl_v40" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v12" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.00046874998952262104
        ELSE 0.0025644171983003616
      END
      ELSE CASE
        WHEN "t1"."tcl_v42" <= 15.5
        THEN 0.0048453607596457005
        ELSE 0.0011636363342404366
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v15" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.0016911764396354556
        ELSE 0.004704641178250313
      END
      ELSE CASE
        WHEN "t1"."tcl_v42" <= 19.5
        THEN 0.006192411761730909
        ELSE 0.0036718749906867743
      END
    END
  END + CASE
    WHEN "t1"."tcl_v10" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v35" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v18" <= 0.5
        THEN 0.0019782392773777246
        ELSE 0.0044980235397815704
      END
      ELSE CASE
        WHEN "t1"."tcl_v42" <= 64.5
        THEN 0.00044871793943457305
        ELSE 0.00013752456288784742
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v30" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v42" <= 1.5
        THEN 0.003017241368070245
        ELSE 0.0005212355172261596
      END
      ELSE CASE
        WHEN "t1"."tcl_v3" <= 0.5
        THEN 0.00010928962001344189
        ELSE 0.00043478261795826256
      END
    END
  END + CASE
    WHEN "t1"."tcl_v18" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v37" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v42" <= 19.5
        THEN 0.0015189873520284891
        ELSE 0.00039235412259586155
      END
      ELSE CASE
        WHEN "t1"."tcl_v42" <= 16.5
        THEN 0.003649122780188918
        ELSE 0.0010331753874197602
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v45" <= 1285.0
      THEN CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.00321585894562304
        ELSE 0.006020314060151577
      END
      ELSE CASE
        WHEN "t1"."tcl_v36" <= 0.5
        THEN 0.003305164398625493
        ELSE 0.0014878049260005355
      END
    END
  END + CASE
    WHEN "t1"."tcl_v36" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v12" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0007921928772702813
        ELSE 0.0041888621635735035
      END
      ELSE CASE
        WHEN "t1"."tcl_v32" <= 0.5
        THEN 0.005015723407268524
        ELSE 0.0026888216380029917
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v39" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v30" <= 0.5
        THEN 0.0023703703191131353
        ELSE 0.001218335353769362
      END
      ELSE CASE
        WHEN "t1"."tcl_v14" <= 0.5
        THEN 0.0007228915928862989
        ELSE 0.001176470541395247
      END
    END
  END + CASE
    WHEN "t1"."tcl_v42" <= 16.5
    THEN CASE
      WHEN "t1"."tcl_v13" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v11" <= 0.5
        THEN 0.005833333358168602
        ELSE 0.0030522088054567575
      END
      ELSE CASE WHEN "t1"."tcl_v34" <= 0.5 THEN 0.0017948717577382922 ELSE 0.0 END
    END
    ELSE CASE
      WHEN "t1"."tcl_v8" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.002578431274741888
        ELSE 0.0003299492527730763
      END
      ELSE CASE
        WHEN "t1"."tcl_v42" <= 18.5
        THEN 0.0010810811072587967
        ELSE 0.0001697312545729801
      END
    END
  END + CASE
    WHEN "t1"."tcl_v9" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v18" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v45" <= 36.349998474121094
        THEN 0.0036956521216779947
        ELSE 0.0006835306994616985
      END
      ELSE CASE
        WHEN "t1"."tcl_v42" <= 25.5
        THEN 0.0035273972898721695
        ELSE 0.0013453814899548888
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v34" <= 0.5
        THEN 0.0005576208350248635
        ELSE 0.0020689654629677534
      END
      ELSE CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.0057172272354364395
        ELSE 0.003496296238154173
      END
    END
  END + CASE
    WHEN "t1"."tcl_v9" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v36" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.002394195878878236
        ELSE 0.0002526315802242607
      END
      ELSE CASE
        WHEN "t1"."tcl_v21" <= 0.5
        THEN 0.0006530958344228566
        ELSE 0.0012359550455585122
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v40" <= 0.5
        THEN 0.0009684210526756942
        ELSE 0.0022162161767482758
      END
      ELSE CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.003552068490535021
        ELSE 0.006050179246813059
      END
    END
  END + CASE
    WHEN "t1"."tcl_v15" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v45" <= 4529.849609375
        THEN 0.00028618151554837823
        ELSE 0.0010735293617472053
      END
      ELSE CASE
        WHEN "t1"."tcl_v44" <= 74.8499984741211
        THEN 0.0020895523484796286
        ELSE 0.005138632375746965
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v42" <= 17.5
      THEN CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.0035888501442968845
        ELSE 0.006791604217141867
      END
      ELSE CASE
        WHEN "t1"."tcl_v40" <= 0.5
        THEN 0.0014127764152362943
        ELSE 0.004009434022009373
      END
    END
  END + CASE
    WHEN "t1"."tcl_v15" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v44" <= 84.4749984741211
      THEN CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.0016959999920800328
        ELSE 7.672634092159569e-05
      END
      ELSE CASE
        WHEN "t1"."tcl_v29" <= 0.5
        THEN 0.0023380282800644636
        ELSE 0.0037692307960242033
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.0017622950254008174
        ELSE 0.0007715133251622319
      END
      ELSE CASE
        WHEN "t1"."tcl_v21" <= 0.5
        THEN 0.005303776822984219
        ELSE 0.004398111719638109
      END
    END
  END + CASE
    WHEN "t1"."tcl_v42" <= 10.5
    THEN CASE
      WHEN "t1"."tcl_v13" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v42" <= 5.5
        THEN 0.0065437788143754005
        ELSE 0.004664804320782423
      END
      ELSE CASE
        WHEN "t1"."tcl_v44" <= 20.125
        THEN 0.0014432989992201328
        ELSE 0.0029220778960734606
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v18" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.0015803108690306544
        ELSE 0.00027573530678637326
      END
      ELSE CASE
        WHEN "t1"."tcl_v39" <= 0.5
        THEN 0.0032774945721030235
        ELSE 0.001500000013038516
      END
    END
  END + CASE
    WHEN "t1"."tcl_v12" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v15" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.0007723112357780337
        ELSE 0.0028571428265422583
      END
      ELSE CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.0030989956576377153
        ELSE 0.00040650405571796
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v11" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v40" <= 0.5
        THEN 0.00374692864716053
        ELSE 0.006086956709623337
      END
      ELSE CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.001283185789361596
        ELSE 0.003044982673600316
      END
    END
  END + CASE
    WHEN "t1"."tcl_v9" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v7" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v42" <= 7.5
        THEN 0.0025685785803943872
        ELSE 0.0003822372236754745
      END
      ELSE CASE
        WHEN "t1"."tcl_v42" <= 47.5
        THEN 0.004350877366960049
        ELSE 0.0007103825337253511
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v24" <= 0.5
        THEN 0.0015555555000901222
        ELSE 0.0007462686626240611
      END
      ELSE CASE
        WHEN "t1"."tcl_v37" <= 0.5
        THEN 0.004155843984335661
        ELSE 0.0055206287652254105
      END
    END
  END + CASE
    WHEN "t1"."tcl_v7" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v29" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v44" <= 65.77499389648438
        THEN 0.00097337004262954
        ELSE 0.00023310023243539035
      END
      ELSE CASE
        WHEN "t1"."tcl_v42" <= 5.5
        THEN 0.004376130178570747
        ELSE 0.0009973045671358705
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v42" <= 15.5
      THEN CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.004693877417594194
        ELSE 0.007068492937833071
      END
      ELSE CASE
        WHEN "t1"."tcl_v45" <= 4868.72509765625
        THEN 0.003949880599975586
        ELSE 0.0017496634973213077
      END
    END
  END + CASE
    WHEN "t1"."tcl_v44" <= 68.9749984741211
    THEN CASE
      WHEN "t1"."tcl_v25" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v14" <= 0.5
        THEN 0.002881745109334588
        ELSE 0.0010546875419095159
      END
      ELSE CASE
        WHEN "t1"."tcl_v30" <= 0.5
        THEN 0.0012741935206577182
        ELSE 0.00028813560493290424
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v17" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v45" <= 1246.125
        THEN 0.006739446893334389
        ELSE 0.003182897809892893
      END
      ELSE CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.0009459459688514471
        ELSE 0.003950310405343771
      END
    END
  END + CASE
    WHEN "t1"."tcl_v42" <= 22.5
    THEN CASE
      WHEN "t1"."tcl_v25" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v42" <= 5.5
        THEN 0.0064858198165893555
        ELSE 0.0042235408909618855
      END
      ELSE CASE WHEN "t1"."tcl_v35" <= 0.5 THEN 0.0016570327570661902 ELSE 0.0 END
    END
    ELSE CASE
      WHEN "t1"."tcl_v22" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0009044908219948411
        ELSE 0.0034442059695720673
      END
      ELSE CASE
        WHEN "t1"."tcl_v30" <= 0.5
        THEN 0.00018315018678549677
        ELSE 7.653061038581654e-05
      END
    END
  END + CASE
    WHEN "t1"."tcl_v9" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v42" <= 17.5
      THEN CASE
        WHEN "t1"."tcl_v22" <= 0.5
        THEN 0.0037269373424351215
        ELSE 0.0014549180632457137
      END
      ELSE CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.0011512844357639551
        ELSE 0.0001884920638985932
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v40" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.003536280244588852
        ELSE 0.0004819277091883123
      END
      ELSE CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.003644578391686082
        ELSE 0.005862708669155836
      END
    END
  END + CASE
    WHEN "t1"."tcl_v42" <= 16.5
    THEN CASE
      WHEN "t1"."tcl_v7" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.002064421772956848
        ELSE 0.004471058025956154
      END
      ELSE CASE
        WHEN "t1"."tcl_v26" <= 0.5
        THEN 0.006456834729760885
        ELSE 0.007366666570305824
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v26" <= 0.5
        THEN 0.0003327786980662495
        ELSE 0.0010620300890877843
      END
      ELSE CASE
        WHEN "t1"."tcl_v45" <= 1434.324951171875
        THEN 0.0015151514671742916
        ELSE 0.0039100684225559235
      END
    END
  END + CASE
    WHEN "t1"."tcl_v15" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v7" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v38" <= 0.5
        THEN 0.0009374999790452421
        ELSE 0.000539999979082495
      END
      ELSE CASE
        WHEN "t1"."tcl_v45" <= 1466.0999755859375
        THEN 0.007075471803545952
        ELSE 0.002456896472722292
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v35" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v20" <= 0.5
        THEN 0.004956318996846676
        ELSE 0.002209072932600975
      END
      ELSE CASE
        WHEN "t1"."tcl_v28" <= 0.5
        THEN 9.433962259208784e-05
        ELSE 0.0005747126415371895
      END
    END
  END + CASE
    WHEN "t1"."tcl_v12" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v18" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v40" <= 0.5
        THEN 0.0008198433206416667
        ELSE 0.001836734707467258
      END
      ELSE CASE
        WHEN "t1"."tcl_v44" <= 72.79999542236328
        THEN 0.001697530853562057
        ELSE 0.003717532381415367
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v42" <= 17.5
      THEN CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.0066348775289952755
        ELSE 0.004056795034557581
      END
      ELSE CASE
        WHEN "t1"."tcl_v45" <= 1689.7249755859375
        THEN 0.0015546218492090702
        ELSE 0.0026149132754653692
      END
    END
  END + CASE
    WHEN "t1"."tcl_v34" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v9" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.0008259773021563888
        ELSE 0.002749999985098839
      END
      ELSE CASE
        WHEN "t1"."tcl_v45" <= 1259.1749267578125
        THEN 0.005862884223461151
        ELSE 0.0033459358382970095
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v36" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v23" <= 0.5
        THEN 0.0008602150483056903
        ELSE 0.0020833334419876337
      END
      ELSE CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.00024875623057596385
        ELSE 0.0020168067421764135
      END
    END
  END + CASE
    WHEN "t1"."tcl_v12" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v10" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0008362989174202085
        ELSE 0.003824939951300621
      END
      ELSE CASE
        WHEN "t1"."tcl_v36" <= 0.5
        THEN 0.0010833332780748606
        ELSE 0.0005574912647716701
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v6" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v20" <= 0.5
        THEN 0.005691057071089745
        ELSE 0.0034146341495215893
      END
      ELSE CASE
        WHEN "t1"."tcl_v26" <= 0.5
        THEN 0.003192770993337035
        ELSE 0.0020224719773977995
      END
    END
  END + CASE
    WHEN "t1"."tcl_v40" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v42" <= 15.5
      THEN CASE
        WHEN "t1"."tcl_v10" <= 0.5
        THEN 0.004482269287109375
        ELSE 0.0016008771490305662
      END
      ELSE CASE
        WHEN "t1"."tcl_v18" <= 0.5
        THEN 0.000433314562542364
        ELSE 0.001752941170707345
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v12" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v8" <= 0.5
        THEN 0.003411371260881424
        ELSE 0.0008139534620568156
      END
      ELSE CASE
        WHEN "t1"."tcl_v29" <= 0.5
        THEN 0.0046651787124574184
        ELSE 0.006359584163874388
      END
    END
  END + CASE
    WHEN "t1"."tcl_v9" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v44" <= 92.42499542236328
        THEN 0.00022433718550018966
        ELSE 0.0011746988166123629
      END
      ELSE CASE
        WHEN "t1"."tcl_v18" <= 0.5
        THEN 0.0017617449630051851
        ELSE 0.00350383622571826
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v34" <= 0.5
        THEN 0.0005511810886673629
        ELSE 0.0015529411612078547
      END
      ELSE CASE
        WHEN "t1"."tcl_v43" <= 0.5
        THEN 0.005104679614305496
        ELSE 0.006200000178068876
      END
    END
  END + CASE
    WHEN "t1"."tcl_v35" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v42" <= 10.5
      THEN CASE
        WHEN "t1"."tcl_v22" <= 0.5
        THEN 0.006324642337858677
        ELSE 0.002236421685665846
      END
      ELSE CASE
        WHEN "t1"."tcl_v16" <= 0.5
        THEN 0.002806409727782011
        ELSE 0.0006349206087179482
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v16" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v42" <= 67.5
        THEN 0.0004521276568993926
        ELSE 0.00012793176574632525
      END
      ELSE CASE
        WHEN "t1"."tcl_v36" <= 0.5
        THEN 0.00014814814494457096
        ELSE 8.310249540954828e-05
      END
    END
  END + CASE
    WHEN "t1"."tcl_v33" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v9" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v15" <= 0.5
        THEN 0.0003102310292888433
        ELSE 0.000835734885185957
      END
      ELSE CASE
        WHEN "t1"."tcl_v26" <= 0.5
        THEN 0.0005729166441597044
        ELSE 0.002161571988835931
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v7" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v44" <= 56.724998474121094
        THEN 0.0032905982807278633
        ELSE 0.0013718411792069674
      END
      ELSE CASE
        WHEN "t1"."tcl_v37" <= 0.5
        THEN 0.004363636486232281
        ELSE 0.0056748464703559875
      END
    END
  END + CASE
    WHEN "t1"."tcl_v40" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v42" <= 16.5
      THEN CASE
        WHEN "t1"."tcl_v22" <= 0.5
        THEN 0.00486370176076889
        ELSE 0.0016504854429513216
      END
      ELSE CASE
        WHEN "t1"."tcl_v26" <= 0.5
        THEN 0.0005214521661400795
        ELSE 0.0017169811762869358
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v12" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0012982456246390939
        ELSE 0.0037908495869487524
      END
      ELSE CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.005862989462912083
        ELSE 0.0002439024392515421
      END
    END
  END + CASE
    WHEN "t1"."tcl_v10" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v45" <= 1195.0250244140625
      THEN CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.006993548478931189
        ELSE 0.00372628727927804
      END
      ELSE CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.0005321888602338731
        ELSE 0.003259938908740878
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v29" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v42" <= 8.5
        THEN 0.002093023154884577
        ELSE 0.00016917292668949813
      END
      ELSE CASE
        WHEN "t1"."tcl_v44" <= 20.57499885559082
        THEN 0.0013188975863158703
        ELSE 0.00045454545761458576
      END
    END
  END + CASE
    WHEN "t1"."tcl_v18" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v19" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v14" <= 0.5
        THEN 0.002047685906291008
        ELSE 0.0010221285047009587
      END
      ELSE CASE
        WHEN "t1"."tcl_v39" <= 0.5
        THEN 0.0009062821627594531
        ELSE 0.0002811244921758771
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v7" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.0015245478134602308
        ELSE 0.0036138612776994705
      END
      ELSE CASE
        WHEN "t1"."tcl_v12" <= 0.5
        THEN 0.00379471224732697
        ELSE 0.005646511446684599
      END
    END
  END + CASE
    WHEN "t1"."tcl_v45" <= 244.6999969482422
    THEN CASE
      WHEN "t1"."tcl_v22" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v18" <= 0.5
        THEN 0.003636363660916686
        ELSE 0.006481802556663752
      END
      ELSE CASE
        WHEN "t1"."tcl_v42" <= 1.5
        THEN 0.0031617647036910057
        ELSE 0.0013942307559773326
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v7" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.0013406293001025915
        ELSE 9.036144911078736e-05
      END
      ELSE CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.004250138532370329
        ELSE 0.0007331378292292356
      END
    END
  END + CASE
    WHEN "t1"."tcl_v18" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v37" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.00020547944586724043
        ELSE 0.0017647058703005314
      END
      ELSE CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.001194029813632369
        ELSE 0.002495164517313242
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v6" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v17" <= 0.5
        THEN 0.005612431559711695
        ELSE 0.004053208045661449
      END
      ELSE CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0006049821968190372
        ELSE 0.003432032186537981
      END
    END
  END + CASE
    WHEN "t1"."tcl_v13" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v40" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v45" <= 1285.0
        THEN 0.003987577743828297
        ELSE 0.001297416165471077
      END
      ELSE CASE WHEN "t1"."tcl_v9" <= 0.5 THEN 0.0024040921125561 ELSE 0.00529667129740119 END
    END
    ELSE CASE
      WHEN "t1"."tcl_v35" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0003157894825562835
        ELSE 0.001952380989678204
      END
      ELSE CASE WHEN "t1"."tcl_v42" <= 53.5 THEN 0.0002439024392515421 ELSE 0.0 END
    END
  END + CASE
    WHEN "t1"."tcl_v7" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v6" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v3" <= 0.5
        THEN 0.0002766798425000161
        ELSE 0.0009684210526756942
      END
      ELSE CASE
        WHEN "t1"."tcl_v15" <= 0.5
        THEN 0.001139240455813706
        ELSE 0.0022540250793099403
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v11" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v45" <= 1157.625
        THEN 0.007436619605869055
        ELSE 0.003583093173801899
      END
      ELSE CASE
        WHEN "t1"."tcl_v14" <= 0.5
        THEN 0.0033584905322641134
        ELSE 0.0014987080357968807
      END
    END
  END + CASE
    WHEN "t1"."tcl_v18" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v31" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v44" <= 87.0
        THEN 0.0005307599785737693
        ELSE 0.0015652173897251487
      END
      ELSE CASE
        WHEN "t1"."tcl_v8" <= 0.5
        THEN 0.001738299848511815
        ELSE 0.0010387811344116926
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v31" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.0015969581436365843
        ELSE 0.004262820351868868
      END
      ELSE CASE
        WHEN "t1"."tcl_v38" <= 0.5
        THEN 0.004781420808285475
        ELSE 0.0032222222071141005
      END
    END
  END + CASE
    WHEN "t1"."tcl_v7" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v18" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v3" <= 0.5
        THEN 0.0006287069991230965
        ELSE 0.0009513108525425196
      END
      ELSE CASE
        WHEN "t1"."tcl_v12" <= 0.5
        THEN 0.0016434540739282966
        ELSE 0.003375394269824028
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v34" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.002244897885248065
        ELSE 0.00543535640463233
      END
      ELSE CASE
        WHEN "t1"."tcl_v45" <= 5760.25
        THEN 0.0014503817074000835
        ELSE 0.0027272726874798536
      END
    END
  END + CASE
    WHEN "t1"."tcl_v7" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v10" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v30" <= 0.5
        THEN 0.0024720244109630585
        ELSE 0.0011075949296355247
      END
      ELSE CASE
        WHEN "t1"."tcl_v45" <= 36.32499694824219
        THEN 0.0030128206126391888
        ELSE 0.0004680038255173713
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v18" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v45" <= 1626.375
        THEN 0.005339805968105793
        ELSE 0.0019863012712448835
      END
      ELSE CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.005339339375495911
        ELSE 0.0007476635510101914
      END
    END
  END + CASE
    WHEN "t1"."tcl_v18" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v35" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0009052924579009414
        ELSE 0.0026203207671642303
      END
      ELSE CASE
        WHEN "t1"."tcl_v15" <= 0.5
        THEN 0.00020134227816015482
        ELSE 0.0006164383376017213
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v42" <= 10.5
      THEN CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.004444444552063942
        ELSE 0.007317073177546263
      END
      ELSE CASE
        WHEN "t1"."tcl_v37" <= 0.5
        THEN 0.001397205633111298
        ELSE 0.0034889434464275837
      END
    END
  END + CASE
    WHEN "t1"."tcl_v18" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v44" <= 95.3499984741211
        THEN 0.00028442146140150726
        ELSE 0.0018272425513714552
      END
      ELSE CASE
        WHEN "t1"."tcl_v44" <= 79.14999389648438
        THEN 0.001766342087648809
        ELSE 0.004652014467865229
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v11" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v34" <= 0.5
        THEN 0.005314222536981106
        ELSE 0.0020091324113309383
      END
      ELSE CASE
        WHEN "t1"."tcl_v31" <= 0.5
        THEN 0.0016143497778102756
        ELSE 0.002555331913754344
      END
    END
  END + CASE
    WHEN "t1"."tcl_v35" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v18" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0009931973181664944
        ELSE 0.002705761231482029
      END
      ELSE CASE
        WHEN "t1"."tcl_v40" <= 0.5
        THEN 0.003249594708904624
        ELSE 0.005514925345778465
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v45" <= 6143.099609375
      THEN CASE
        WHEN "t1"."tcl_v40" <= 0.5
        THEN 9.316769865108654e-05
        ELSE 0.00034482759656384587
      END
      ELSE CASE
        WHEN "t1"."tcl_v43" <= 0.5
        THEN 0.0006172839784994721
        ELSE 0.00022222222469281405
      END
    END
  END + CASE
    WHEN "t1"."tcl_v9" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v25" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v15" <= 0.5
        THEN 0.0008076009689830244
        ELSE 0.0023687751963734627
      END
      ELSE CASE
        WHEN "t1"."tcl_v5" <= 0.5
        THEN 0.0008041237015277147
        ELSE 0.0001960784284165129
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v6" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v12" <= 0.5
        THEN 0.0037813885137438774
        ELSE 0.005715509876608849
      END
      ELSE CASE
        WHEN "t1"."tcl_v12" <= 0.5
        THEN 0.0017804154194891453
        ELSE 0.0035215946845710278
      END
    END
  END + CASE
    WHEN "t1"."tcl_v33" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v7" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v13" <= 0.5
        THEN 0.00031779659911990166
        ELSE 0.00013447432138491422
      END
      ELSE CASE
        WHEN "t1"."tcl_v42" <= 55.5
        THEN 0.0025187970604747534
        ELSE 0.0009126983932219446
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v22" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v42" <= 17.5
        THEN 0.00562830688431859
        ELSE 0.0033481745049357414
      END
      ELSE CASE
        WHEN "t1"."tcl_v32" <= 0.5
        THEN 0.002122186589986086
        ELSE 0.002260869601741433
      END
    END
  END + CASE
    WHEN "t1"."tcl_v44" <= 69.07499694824219
    THEN CASE
      WHEN "t1"."tcl_v9" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.00014084507711231709
        ELSE 0.0021193092688918114
      END
      ELSE CASE WHEN "t1"."tcl_v35" <= 0.5 THEN 0.0033121018204838037 ELSE 0.0 END
    END
    ELSE CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.0014482758706435561
        ELSE 0.00045146726188249886
      END
      ELSE CASE
        WHEN "t1"."tcl_v18" <= 0.5
        THEN 0.0036890243645757437
        ELSE 0.005603217054158449
      END
    END
  END + CASE
    WHEN "t1"."tcl_v15" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v16" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v42" <= 13.5
        THEN 0.0057281553745269775
        ELSE 0.0016217908123508096
      END
      ELSE CASE
        WHEN "t1"."tcl_v3" <= 0.5
        THEN 0.0003846153849735856
        ELSE 0.0009795918595045805
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v42" <= 10.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0005555555690079927
        ELSE 0.006147368345409632
      END
      ELSE CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.0010126582346856594
        ELSE 0.0037072019185870886
      END
    END
  END + CASE
    WHEN "t1"."tcl_v33" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v9" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.0001936376211233437
        ELSE 0.00079452054342255
      END
      ELSE CASE
        WHEN "t1"."tcl_v36" <= 0.5
        THEN 0.0016283924924209714
        ELSE 0.0007589285960420966
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v18" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v8" <= 0.5
        THEN 0.003382978728041053
        ELSE 0.0018009478226304054
      END
      ELSE CASE
        WHEN "t1"."tcl_v45" <= 198.77499389648438
        THEN 0.007145389914512634
        ELSE 0.004423906560987234
      END
    END
  END + CASE
    WHEN "t1"."tcl_v35" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v9" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v44" <= 92.19999694824219
        THEN 0.001394422259181738
        ELSE 0.0033082705922424793
      END
      ELSE CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0019647355657070875
        ELSE 0.005322812125086784
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v44" <= 106.29999542236328
      THEN CASE
        WHEN "t1"."tcl_v42" <= 65.5
        THEN 0.0001225114829139784
        ELSE 1.9455252186162397e-05
      END
      ELSE CASE
        WHEN "t1"."tcl_v12" <= 0.5
        THEN 0.0003759398532565683
        ELSE 0.002424242440611124
      END
    END
  END + CASE
    WHEN "t1"."tcl_v7" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v24" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v18" <= 0.5
        THEN 0.0005291641573421657
        ELSE 0.00240506324917078
      END
      ELSE CASE
        WHEN "t1"."tcl_v20" <= 0.5
        THEN 0.0032047478016465902
        ELSE 0.0012554113054648042
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v42" <= 62.5
        THEN 0.002005347516387701
        ELSE 0.0006361323175951838
      END
      ELSE CASE
        WHEN "t1"."tcl_v45" <= 1149.824951171875
        THEN 0.007347204256802797
        ELSE 0.004214437212795019
      END
    END
  END + CASE
    WHEN "t1"."tcl_v35" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.0007343124016188085
        ELSE 0.0021850899793207645
      END
      ELSE CASE
        WHEN "t1"."tcl_v18" <= 0.5
        THEN 0.002531914971768856
        ELSE 0.00508513581007719
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v45" <= 4480.10009765625
      THEN CASE
        WHEN "t1"."tcl_v44" <= 24.475000381469727
        THEN 0.0
        ELSE 9.95024893200025e-05
      END
      ELSE CASE WHEN "t1"."tcl_v2" <= 0.5 THEN 0.0 ELSE 0.0004736842238344252 END
    END
  END + CASE
    WHEN "t1"."tcl_v15" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v44" <= 75.25
      THEN CASE
        WHEN "t1"."tcl_v34" <= 0.5
        THEN 0.0011194029357284307
        ELSE 0.0003434343379922211
      END
      ELSE CASE
        WHEN "t1"."tcl_v11" <= 0.5
        THEN 0.003758127335458994
        ELSE 0.0009688581340014935
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v18" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v42" <= 19.5
        THEN 0.003539822995662689
        ELSE 0.0010625000577419996
      END
      ELSE CASE
        WHEN "t1"."tcl_v38" <= 0.5
        THEN 0.005201949737966061
        ELSE 0.002750929445028305
      END
    END
  END + CASE
    WHEN "t1"."tcl_v16" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v18" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v12" <= 0.5
        THEN 0.0010079274652525783
        ELSE 0.002182080876082182
      END
      ELSE CASE
        WHEN "t1"."tcl_v42" <= 16.5
        THEN 0.0058035035617649555
        ELSE 0.0027958478312939405
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v34" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.0017117117531597614
        ELSE 1.8656715838005766e-05
      END
      ELSE CASE
        WHEN "t1"."tcl_v38" <= 0.5
        THEN 9.049773507285863e-05
        ELSE 0.0005084745935164392
      END
    END
  END + CASE
    WHEN "t1"."tcl_v18" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v16" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.0022470238618552685
        ELSE 0.0010937500046566129
      END
      ELSE CASE
        WHEN "t1"."tcl_v45" <= 32.125
        THEN 0.0041600000113248825
        ELSE 0.0004178537637926638
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v36" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0013895782176405191
        ELSE 0.0057350159622728825
      END
      ELSE CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.0020681265741586685
        ELSE 0.00403645820915699
      END
    END
  END + CASE
    WHEN "t1"."tcl_v16" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v42" <= 17.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0006578947650268674
        ELSE 0.005797665566205978
      END
      ELSE CASE
        WHEN "t1"."tcl_v40" <= 0.5
        THEN 0.0011135252425447106
        ELSE 0.0032269100192934275
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v30" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v31" <= 0.5
        THEN 0.0008974358788691461
        ELSE 0.0011504425201565027
      END
      ELSE CASE
        WHEN "t1"."tcl_v44" <= 20.024999618530273
        THEN 0.0007258064579218626
        ELSE 0.00030054643866606057
      END
    END
  END + CASE
    WHEN "t1"."tcl_v18" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v36" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0007374301785603166
        ELSE 0.0032216014806181192
      END
      ELSE CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.00028254289645701647
        ELSE 0.0019603525288403034
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v45" <= 1164.949951171875
      THEN CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.0037937385495752096
        ELSE 0.00650552473962307
      END
      ELSE CASE
        WHEN "t1"."tcl_v42" <= 38.5
        THEN 0.004105754196643829
        ELSE 0.001923076924867928
      END
    END
  END + CASE
    WHEN "t1"."tcl_v16" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v11" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v17" <= 0.5
        THEN 0.004789772909134626
        ELSE 0.0035372849088162184
      END
      ELSE CASE
        WHEN "t1"."tcl_v29" <= 0.5
        THEN 0.0011777301551774144
        ELSE 0.0017378497868776321
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v42" <= 1.5
      THEN CASE
        WHEN "t1"."tcl_v45" <= 19.225000381469727
        THEN 0.0
        ELSE 0.0036923077423125505
      END
      ELSE CASE
        WHEN "t1"."tcl_v3" <= 0.5
        THEN 0.00032967032166197896
        ELSE 0.0005928853643126786
      END
    END
  END + CASE
    WHEN "t1"."tcl_v33" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v16" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.0014682540204375982
        ELSE 0.0003357070090714842
      END
      ELSE CASE
        WHEN "t1"."tcl_v40" <= 0.5
        THEN 0.00010484927770448849
        ELSE 0.0004081632650922984
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v8" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v40" <= 0.5
        THEN 0.003694117534905672
        ELSE 0.005470149219036102
      END
      ELSE CASE
        WHEN "t1"."tcl_v39" <= 0.5
        THEN 0.0018253967864438891
        ELSE 0.0008163265301845968
      END
    END
  END + CASE
    WHEN "t1"."tcl_v34" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v42" <= 17.5
      THEN CASE
        WHEN "t1"."tcl_v16" <= 0.5
        THEN 0.005541237071156502
        ELSE 0.0019047618843615055
      END
      ELSE CASE
        WHEN "t1"."tcl_v22" <= 0.5
        THEN 0.0021230769343674183
        ELSE 7.61904739192687e-05
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v23" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v16" <= 0.5
        THEN 0.0008086253656074405
        ELSE 0.00015873015217948705
      END
      ELSE CASE
        WHEN "t1"."tcl_v44" <= 89.875
        THEN 0.0005504587315954268
        ELSE 0.002699619857594371
      END
    END
  END + CASE
    WHEN "t1"."tcl_v13" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v12" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v36" <= 0.5
        THEN 0.002378821838647127
        ELSE 0.0013910355046391487
      END
      ELSE CASE
        WHEN "t1"."tcl_v43" <= 0.5
        THEN 0.00379081629216671
        ELSE 0.005432900507003069
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v36" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v3" <= 0.5
        THEN 0.0007777777500450611
        ELSE 0.0013080168282613158
      END
      ELSE CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.00015151515253819525
        ELSE 0.0015267175622284412
      END
    END
  END + CASE
    WHEN "t1"."tcl_v42" <= 7.5
    THEN CASE
      WHEN "t1"."tcl_v45" <= 68.4749984741211
      THEN CASE
        WHEN "t1"."tcl_v16" <= 0.5
        THEN 0.005604395642876625
        ELSE 0.0028634362388402224
      END
      ELSE CASE
        WHEN "t1"."tcl_v37" <= 0.5
        THEN 0.004254658240824938
        ELSE 0.006594981998205185
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v44" <= 72.3499984741211
      THEN CASE
        WHEN "t1"."tcl_v44" <= 29.174999237060547
        THEN 0.000287234055576846
        ELSE 0.001378091867081821
      END
      ELSE CASE
        WHEN "t1"."tcl_v37" <= 0.5
        THEN 0.0017377049662172794
        ELSE 0.003397040767595172
      END
    END
  END + CASE
    WHEN "t1"."tcl_v7" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v40" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v31" <= 0.5
        THEN 0.0006057494902051985
        ELSE 0.0013043478829786181
      END
      ELSE CASE
        WHEN "t1"."tcl_v12" <= 0.5
        THEN 0.0018146717920899391
        ELSE 0.0042977528646588326
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v42" <= 17.5
      THEN CASE
        WHEN "t1"."tcl_v3" <= 0.5
        THEN 0.0072105261497199535
        ELSE 0.006333973258733749
      END
      ELSE CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0014246575301513076
        ELSE 0.004128553904592991
      END
    END
  END + CASE
    WHEN "t1"."tcl_v35" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v7" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v34" <= 0.5
        THEN 0.0029324323404580355
        ELSE 0.0007510430878028274
      END
      ELSE CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.002296983730047941
        ELSE 0.0054741897620260715
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v9" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.0001849217660492286
        ELSE 5.4794520110590383e-05
      END
      ELSE CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.0011363636003807187
        ELSE 0.00010309278150089085
      END
    END
  END + CASE
    WHEN "t1"."tcl_v40" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v12" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0004150943423155695
        ELSE 0.002333767944946885
      END
      ELSE CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.004105960484594107
        ELSE 0.0018333332845941186
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v35" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.0034635879565030336
        ELSE 0.0055957273580133915
      END
      ELSE CASE WHEN "t1"."tcl_v45" <= 6483.4248046875 THEN 0.0005555555690079927 ELSE 0.0 END
    END
  END + CASE
    WHEN "t1"."tcl_v18" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v42" <= 16.5
      THEN CASE
        WHEN "t1"."tcl_v44" <= 82.9749984741211
        THEN 0.0019387755310162902
        ELSE 0.00636363634839654
      END
      ELSE CASE
        WHEN "t1"."tcl_v40" <= 0.5
        THEN 0.000538818072527647
        ELSE 0.001647727214731276
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v44" <= 69.07499694824219
      THEN CASE
        WHEN "t1"."tcl_v42" <= 3.5
        THEN 0.0059523810632526875
        ELSE 0.0020061256363987923
      END
      ELSE CASE
        WHEN "t1"."tcl_v15" <= 0.5
        THEN 0.0034813752863556147
        ELSE 0.005456918850541115
      END
    END
  END + CASE
    WHEN "t1"."tcl_v22" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v34" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v42" <= 17.5
        THEN 0.005709570832550526
        ELSE 0.0021396283991634846
      END
      ELSE CASE
        WHEN "t1"."tcl_v42" <= 37.5
        THEN 0.0009890110231935978
        ELSE 0.0017594255041331053
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v34" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.002062350045889616
        ELSE 5.494505603564903e-05
      END
      ELSE CASE
        WHEN "t1"."tcl_v45" <= 41.79999923706055
        THEN 0.0016666667070239782
        ELSE 0.00010416666918899864
      END
    END
  END + CASE
    WHEN "t1"."tcl_v9" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v12" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.0013522537192329764
        ELSE 6.500541348941624e-05
      END
      ELSE CASE
        WHEN "t1"."tcl_v2" <= 0.5
        THEN 0.0011965811718255281
        ELSE 0.0022557727061212063
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v7" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v44" <= 55.42499923706055
        THEN 0.003744221990928054
        ELSE 0.0010084033710882068
      END
      ELSE CASE
        WHEN "t1"."tcl_v17" <= 0.5
        THEN 0.005577299278229475
        ELSE 0.004123036749660969
      END
    END
  END + CASE
    WHEN "t1"."tcl_v19" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v7" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v45" <= 199.54998779296875
        THEN 0.005117056891322136
        ELSE 0.0011526671005412936
      END
      ELSE CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.005014326423406601
        ELSE 0.0005089820479042828
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v35" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v44" <= 21.024999618530273
        THEN 0.0011612903326749802
        ELSE 0.00010638297680998221
      END
      ELSE CASE
        WHEN "t1"."tcl_v29" <= 0.5
        THEN 3.0030030757188797e-05
        ELSE 0.00015957446885295212
      END
    END
  END + CASE
    WHEN "t1"."tcl_v39" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v40" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v45" <= 223.52499389648438
        THEN 0.003488806076347828
        ELSE 0.0012418627738952637
      END
      ELSE CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.0031175469048321247
        ELSE 0.005195843521505594
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v36" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.0008051947806961834
        ELSE 0.0027665705420076847
      END
      ELSE CASE WHEN "t1"."tcl_v22" <= 0.5 THEN 0.0007213114877231419 ELSE 0.0 END
    END
  END + CASE
    WHEN "t1"."tcl_v9" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v42" <= 22.5
      THEN CASE
        WHEN "t1"."tcl_v23" <= 0.5
        THEN 0.0018028846243396401
        ELSE 0.004117647185921669
      END
      ELSE CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.001191827468574047
        ELSE 0.00014042126713320613
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v45" <= 548.2750244140625
      THEN CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.007621052674949169
        ELSE 0.004836448468267918
      END
      ELSE CASE
        WHEN "t1"."tcl_v37" <= 0.5
        THEN 0.0016435643192380667
        ELSE 0.003860160242766142
      END
    END
  END + CASE
    WHEN "t1"."tcl_v12" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v35" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.0016292601358145475
        ELSE 0.003628013888373971
      END
      ELSE CASE
        WHEN "t1"."tcl_v8" <= 0.5
        THEN 0.0002772963489405811
        ELSE 2.1276595361996442e-05
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v44" <= 69.07499694824219
      THEN CASE
        WHEN "t1"."tcl_v34" <= 0.5
        THEN 0.0035763410851359367
        ELSE 0.0004320987791288644
      END
      ELSE CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.005212766118347645
        ELSE 0.0006936416029930115
      END
    END
  END + CASE
    WHEN "t1"."tcl_v9" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v40" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v12" <= 0.5
        THEN 0.0007529948488809168
        ELSE 0.0014104882720857859
      END
      ELSE CASE
        WHEN "t1"."tcl_v29" <= 0.5
        THEN 0.0016967508709058166
        ELSE 0.0027102804742753506
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v42" <= 16.5
      THEN CASE
        WHEN "t1"."tcl_v42" <= 4.5
        THEN 0.00657894741743803
        ELSE 0.004880382679402828
      END
      ELSE CASE
        WHEN "t1"."tcl_v42" <= 39.5
        THEN 0.0036288087721914053
        ELSE 0.002159800147637725
      END
    END
  END + CASE
    WHEN "t1"."tcl_v42" <= 12.5
    THEN CASE
      WHEN "t1"."tcl_v25" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.007161198183894157
        ELSE 0.0043205576948821545
      END
      ELSE CASE WHEN "t1"."tcl_v35" <= 0.5 THEN 0.002293333411216736 ELSE 0.0 END
    END
    ELSE CASE
      WHEN "t1"."tcl_v44" <= 74.7750015258789
      THEN CASE
        WHEN "t1"."tcl_v16" <= 0.5
        THEN 0.001297440379858017
        ELSE 0.00015568862727377564
      END
      ELSE CASE
        WHEN "t1"."tcl_v12" <= 0.5
        THEN 0.0020071365870535374
        ELSE 0.003382352879270911
      END
    END
  END + CASE
    WHEN "t1"."tcl_v33" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v8" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v11" <= 0.5
        THEN 0.0014508580788969994
        ELSE 0.0005445544375106692
      END
      ELSE CASE
        WHEN "t1"."tcl_v34" <= 0.5
        THEN 0.00010791367094498128
        ELSE 0.00029411763534881175
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v22" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.005431654863059521
        ELSE 0.003034979337826371
      END
      ELSE CASE
        WHEN "t1"."tcl_v28" <= 0.5
        THEN 0.0024090909864753485
        ELSE 0.0014090909389778972
      END
    END
  END + CASE
    WHEN "t1"."tcl_v18" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.00029546947916969657
        ELSE 0.00120204605627805
      END
      ELSE CASE
        WHEN "t1"."tcl_v13" <= 0.5
        THEN 0.0031041258480399847
        ELSE 0.001828703680075705
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v44" <= 81.82499694824219
        THEN 0.0007246377062983811
        ELSE 0.0018827160820364952
      END
      ELSE CASE
        WHEN "t1"."tcl_v45" <= 106.9749984741211
        THEN 0.007322834804654121
        ELSE 0.004564598668366671
      END
    END
  END + CASE
    WHEN "t1"."tcl_v33" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v9" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v22" <= 0.5
        THEN 0.000538461550604552
        ELSE 0.00010296010441379622
      END
      ELSE CASE
        WHEN "t1"."tcl_v24" <= 0.5
        THEN 0.0017372880829498172
        ELSE 0.0008780487696640193
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v9" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v8" <= 0.5
        THEN 0.002995169023051858
        ELSE 0.0019743589218705893
      END
      ELSE CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.0061057694256305695
        ELSE 0.0031329113990068436
      END
    END
  END + CASE
    WHEN "t1"."tcl_v40" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v7" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v42" <= 5.5
        THEN 0.0036902050487697124
        ELSE 0.0005635148263536394
      END
      ELSE CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.001224105479195714
        ELSE 0.004830246791243553
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v12" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.0036849710159003735
        ELSE 0.00021276595361996442
      END
      ELSE CASE
        WHEN "t1"."tcl_v45" <= 1783.5999755859375
        THEN 0.006521739065647125
        ELSE 0.0035376043524593115
      END
    END
  END + CASE
    WHEN "t1"."tcl_v33" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v34" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v19" <= 0.5
        THEN 0.0005250305403023958
        ELSE 5.681818220182322e-05
      END
      ELSE CASE
        WHEN "t1"."tcl_v45" <= 4785.77490234375
        THEN 0.000849161995574832
        ELSE 0.002352941082790494
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v9" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v8" <= 0.5
        THEN 0.0028648648876696825
        ELSE 0.001813842449337244
      END
      ELSE CASE
        WHEN "t1"."tcl_v20" <= 0.5
        THEN 0.0056289853528141975
        ELSE 0.003381502814590931
      END
    END
  END + CASE
    WHEN "t1"."tcl_v9" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v42" <= 3.5
      THEN CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.003175965743139386
        ELSE 0.007499999832361937
      END
      ELSE CASE
        WHEN "t1"."tcl_v8" <= 0.5
        THEN 0.001288830186240375
        ELSE 0.00036757776979357004
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v35" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.003317422466352582
        ELSE 0.005330948159098625
      END
      ELSE CASE
        WHEN "t1"."tcl_v15" <= 0.5
        THEN 0.000829015567433089
        ELSE 0.00017241379828192294
      END
    END
  END + CASE
    WHEN "t1"."tcl_v42" <= 15.5
    THEN CASE
      WHEN "t1"."tcl_v31" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v18" <= 0.5
        THEN 0.001621621660888195
        ELSE 0.004924623295664787
      END
      ELSE CASE
        WHEN "t1"."tcl_v25" <= 0.5
        THEN 0.005909471772611141
        ELSE 0.0017592592630535364
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v43" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v40" <= 0.5
        THEN 0.0007485281676054001
        ELSE 0.002748538041487336
      END
      ELSE CASE
        WHEN "t1"."tcl_v40" <= 0.5
        THEN 0.0018691589357331395
        ELSE 0.00455882353708148
      END
    END
  END + CASE
    WHEN "t1"."tcl_v40" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v42" <= 15.5
      THEN CASE
        WHEN "t1"."tcl_v44" <= 65.64999389648438
        THEN 0.002185514662414789
        ELSE 0.006466431077569723
      END
      ELSE CASE
        WHEN "t1"."tcl_v44" <= 70.17499542236328
        THEN 0.0004239054978825152
        ELSE 0.0015686274273321033
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v11" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v20" <= 0.5
        THEN 0.005759717430919409
        ELSE 0.003107569646090269
      END
      ELSE CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.003112392034381628
        ELSE 0.00025316455867141485
      END
    END
  END + CASE
    WHEN "t1"."tcl_v40" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v8" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v15" <= 0.5
        THEN 0.0014049586607143283
        ELSE 0.002829457400366664
      END
      ELSE CASE
        WHEN "t1"."tcl_v45" <= 36.349998474121094
        THEN 0.003401360474526882
        ELSE 0.00030160226742736995
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v45" <= 3083.175048828125
      THEN CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.0031874999403953552
        ELSE 0.006281453650444746
      END
      ELSE CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.002905569039285183
        ELSE 0.0007594936760142446
      END
    END
  END + CASE
    WHEN "t1"."tcl_v9" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v44" <= 103.19999694824219
        THEN 0.0003019323630724102
        ELSE 0.0012686566915363073
      END
      ELSE CASE
        WHEN "t1"."tcl_v20" <= 0.5
        THEN 0.0027791878674179316
        ELSE 0.0016535433242097497
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v18" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v37" <= 0.5
        THEN 0.0016205533174797893
        ELSE 0.0025298804976046085
      END
      ELSE CASE
        WHEN "t1"."tcl_v44" <= 69.19999694824219
        THEN 0.0036300173960626125
        ELSE 0.005511921364814043
      END
    END
  END + CASE
    WHEN "t1"."tcl_v33" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v44" <= 93.67499542236328
      THEN CASE
        WHEN "t1"."tcl_v16" <= 0.5
        THEN 0.0005610859952867031
        ELSE 0.0001226993917953223
      END
      ELSE CASE
        WHEN "t1"."tcl_v11" <= 0.5
        THEN 0.00225913617759943
        ELSE 0.0012499999720603228
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v7" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v43" <= 0.5
        THEN 0.00276958872564137
        ELSE 0.004630872514098883
      END
      ELSE CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.003779527498409152
        ELSE 0.005937499925494194
      END
    END
  END + CASE
    WHEN "t1"."tcl_v42" <= 7.5
    THEN CASE
      WHEN "t1"."tcl_v19" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.007649325765669346
        ELSE 0.004703196231275797
      END
      ELSE CASE
        WHEN "t1"."tcl_v3" <= 0.5
        THEN 0.0009090909152291715
        ELSE 0.0023552123457193375
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v7" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v42" <= 16.5
        THEN 0.0017848970601335168
        ELSE 0.0004650024347938597
      END
      ELSE CASE
        WHEN "t1"."tcl_v33" <= 0.5
        THEN 0.0016644473653286695
        ELSE 0.004599644336849451
      END
    END
  END + CASE
    WHEN "t1"."tcl_v11" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v25" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v18" <= 0.5
        THEN 0.002229551551863551
        ELSE 0.0048592593520879745
      END
      ELSE CASE
        WHEN "t1"."tcl_v37" <= 0.5
        THEN 0.0006141367484815419
        ELSE 0.0012827988248318434
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v42" <= 28.5
      THEN CASE
        WHEN "t1"."tcl_v44" <= 93.125
        THEN 0.002803970128297806
        ELSE 0.007627118844538927
      END
      ELSE CASE
        WHEN "t1"."tcl_v45" <= 8677.44921875
        THEN 0.0008596490952186286
        ELSE 0.009999999776482582
      END
    END
  END + CASE
    WHEN "t1"."tcl_v42" <= 16.5
    THEN CASE
      WHEN "t1"."tcl_v9" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.0017629630165174603
        ELSE 0.005100000184029341
      END
      ELSE CASE
        WHEN "t1"."tcl_v26" <= 0.5
        THEN 0.0054942527785897255
        ELSE 0.006814621388912201
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v40" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v25" <= 0.5
        THEN 0.0011657753493636847
        ELSE 8.595988765591756e-05
      END
      ELSE CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.0019519519992172718
        ELSE 0.0039006024599075317
      END
    END
  END + CASE
    WHEN "t1"."tcl_v30" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v7" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v9" <= 0.5
        THEN 0.0012138189049437642
        ELSE 0.003356047673150897
      END
      ELSE CASE
        WHEN "t1"."tcl_v42" <= 15.5
        THEN 0.0068807341158390045
        ELSE 0.003007751889526844
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v45" <= 3010.949951171875
        THEN 0.0002900552353821695
        ELSE 0.0007861271733418107
      END
      ELSE CASE
        WHEN "t1"."tcl_v45" <= 119.0
        THEN 0.006415094248950481
        ELSE 0.003761955304071307
      END
    END
  END + CASE
    WHEN "t1"."tcl_v40" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v35" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v45" <= 109.07499694824219
        THEN 0.004639422986656427
        ELSE 0.002134146401658654
      END
      ELSE CASE
        WHEN "t1"."tcl_v26" <= 0.5
        THEN 0.00014245013881009072
        ELSE 0.0003891050582751632
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v33" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v3" <= 0.5
        THEN 0.002286689355969429
        ELSE 0.0008695652359165251
      END
      ELSE CASE
        WHEN "t1"."tcl_v12" <= 0.5
        THEN 0.003959731664508581
        ELSE 0.005995893385261297
      END
    END
  END + CASE
    WHEN "t1"."tcl_v35" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v42" <= 10.5
      THEN CASE
        WHEN "t1"."tcl_v18" <= 0.5
        THEN 0.002755102002993226
        ELSE 0.006298174615949392
      END
      ELSE CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.0010866260854527354
        ELSE 0.0038504935801029205
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v45" <= 4480.10009765625
      THEN CASE
        WHEN "t1"."tcl_v45" <= 2446.0498046875
        THEN 3.184713204973377e-05
        ELSE 0.00011560693383216858
      END
      ELSE CASE
        WHEN "t1"."tcl_v44" <= 92.42499542236328
        THEN 0.0002230483223684132
        ELSE 0.0008945686859078705
      END
    END
  END + CASE
    WHEN "t1"."tcl_v18" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v35" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.0012995245633646846
        ELSE 0.003135391976684332
      END
      ELSE CASE
        WHEN "t1"."tcl_v13" <= 0.5
        THEN 0.00040453075780533254
        ELSE 9.65250947047025e-05
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v34" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v39" <= 0.5
        THEN 0.0051616160199046135
        ELSE 0.003296398790553212
      END
      ELSE CASE
        WHEN "t1"."tcl_v26" <= 0.5
        THEN 0.0006214689346961677
        ELSE 0.0018749999580904841
      END
    END
  END + CASE
    WHEN "t1"."tcl_v22" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v6" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v5" <= 0.5
        THEN 0.004950166214257479
        ELSE 0.003879709169268608
      END
      ELSE CASE
        WHEN "t1"."tcl_v30" <= 0.5
        THEN 0.00251020397990942
        ELSE 0.0010990207083523273
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v39" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v43" <= 0.5
        THEN 0.0007098765345290303
        ELSE 0.0010344827314838767
      END
      ELSE CASE
        WHEN "t1"."tcl_v36" <= 0.5
        THEN 0.0007999999797903001
        ELSE 4.950494985678233e-05
      END
    END
  END + CASE
    WHEN "t1"."tcl_v9" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v7" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v40" <= 0.5
        THEN 0.0006422018632292747
        ELSE 0.0017898832447826862
      END
      ELSE CASE
        WHEN "t1"."tcl_v15" <= 0.5
        THEN 0.0013984169345349073
        ELSE 0.002733333269134164
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v20" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v37" <= 0.5
        THEN 0.0038854805752635
        ELSE 0.005460122600197792
      END
      ELSE CASE
        WHEN "t1"."tcl_v38" <= 0.5
        THEN 0.0025714286603033543
        ELSE 0.0010055865859612823
      END
    END
  END + CASE
    WHEN "t1"."tcl_v33" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v9" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v13" <= 0.5
        THEN 0.0006160164484754205
        ELSE 9.791921911528334e-05
      END
      ELSE CASE
        WHEN "t1"."tcl_v35" <= 0.5
        THEN 0.001873536268249154
        ELSE 0.0006637168116867542
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v40" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v16" <= 0.5
        THEN 0.003985622897744179
        ELSE 0.00257703079842031
      END
      ELSE CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.005883392412215471
        ELSE 0.003995098173618317
      END
    END
  END + CASE
    WHEN "t1"."tcl_v33" <= 0.5
    THEN CASE
      WHEN "t1"."tcl_v12" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v34" <= 0.5
        THEN 0.00014746544184163213
        ELSE 0.0010617283405736089
      END
      ELSE CASE
        WHEN "t1"."tcl_v7" <= 0.5
        THEN 0.0006145251682028174
        ELSE 0.0015116279246285558
      END
    END
    ELSE CASE
      WHEN "t1"."tcl_v22" <= 0.5
      THEN CASE
        WHEN "t1"."tcl_v6" <= 0.5
        THEN 0.00567791610956192
        ELSE 0.0028998968191444874
      END
      ELSE CASE
        WHEN "t1"."tcl_v41" <= 0.5
        THEN 0.0015151514671742916
        ELSE 0.0022779922001063824
      END
    END
  END AS "pred",
  "customer_id",
  '1.0' AS "model_version"
FROM "t1" AS "t1"