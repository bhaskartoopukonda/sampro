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
    { name: "Manoj", number: 23 },
    { name: "Rajesh", number: 11 },
    { name: "Baman", number: 2 }
  ];
};

