echo "Testando (2)..."
echo

output=$(./a.out < ./testes/input2.txt)
expected_output="2 **\n1 *\n5 *****\n6 ******\n2 **\n8 ********\n6 ******\n7 *******\n10 **********\n10 **********\n7 *******\n3 ***\n6 ******\n7 *******\n3 ***\n8 ********\n9 *********\n9 *********\n4 ****\n5 *****\n3 ***\n3 ***\n5 *****\n4 ****\n5 *****\n10 **********\n2 **\n6 ******\n9 *********\n2 **\n2 **\n1 *\n1 *\n7 *******\n0 \n3 ***\n10 **********\n0 \n5 *****\n2 **\n9 *********\n4 ****\n4 ****\n8 ********\n0 \n7 *******\n6 ******\n3 ***\n9 *********\n9 *********\n10 **********\n0 \n8 ********\n3 ***\n1 *\n8 ********\n10 **********\n4 ****\n7 *******\n6 ******\n9 *********\n0 \n0 \n2 **\n3 ***\n2 **\n3 ***\n2 **\n2 **\n8 ********\n7 *******\n3 ***\n7 *******\n4 ****\n3 ***\n5 *****\n9 *********\n6 ******\n7 *******\n1 *\n0 \n9 *********\n7 *******\n9 *********\n6 ******\n8 ********\n5 *****\n10 **********\n0 \n0 \n1 *\n0 \n0 \n0 \n10 **********\n3 ***\n5 *****\n8 ********\n7 *******\n5 *****"


if [ $? -eq 0 ] ; then
  echo "Running ok: Program exited zero"
else
  echo "Fail on running: Program did not exit zero"
  exit 1
fi

if [ "$output" == "$expected_output" ] ; then
  echo "Pass: A saida esperada esta correta"
else
  echo "Era esperado '$expected_output' mas o programa retornou: $output"
  exit 1
fi

echo
echo "Teste 2 realizado com sucesso"

exit 0