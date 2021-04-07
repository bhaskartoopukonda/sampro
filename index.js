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
    { Name: "Manoj", Desg: "Idexcel_Devops" },
    { Name: "Rajesh", Desg: "Idexcel_CYNC" },
    { Name: "Ram", Desg: "Idexcel-CYNC-LOS" }
  ];
};

