module.exports.handler = async event => {
  return {
    statusCode: 200,
    body: JSON.stringify(
      {
        message: playerList()
      },
      null,
      2
    )
  };
};const playerList = () => {
  return [
    { Name: "Manoj", Desg: "Idexcel-DevOps" },
    { Name: "Rajesh", Desg: "Idexcel-CYNC" },
    { Name: "Hari", Desg: "Idexcel-CYNC" },
    { Name: "Ram", Desg: "IdexcelCYNCLOS" }
  ];
};
