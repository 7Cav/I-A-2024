while {true} do {
	_curators = allCurators;
	{
		_x addCuratorEditableObjects [allUnits, true];
		_x addCuratorEditableObjects [vehicles, true];
   } forEach _curators;

	sleep 30;
};
